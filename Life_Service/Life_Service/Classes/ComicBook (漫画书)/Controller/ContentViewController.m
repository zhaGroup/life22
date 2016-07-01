//
//  ContentViewController.m
//  Demo-manhuashu
//
//  Created by tarena on 16/6/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ContentViewController.h"
#import "ComicWebUtils.h"
#import "UIImageView+AFNetworking.h"
#import "Chapter.h"

@interface ContentViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *myImageSV;
@property (nonatomic,strong) NSArray *imageArr;
@property (nonatomic,assign) NSInteger *page;

@end

@implementation ContentViewController

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSInteger pageNum = round(self.myImageSV.contentOffset.x / self.myImageSV.frame.size.width);
    if (pageNum >= self.chapters.count) {
        Chapter *chapter = self.chapters.lastObject;
        self.navigationItem.title = chapter.name;
        return;
    }
    Chapter *chapter = self.chapters[pageNum];
    self.navigationItem.title = chapter.name;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myImageSV.contentSize = CGSizeMake(self.chapters.count * 375, 0);
    self.myImageSV.contentOffset = CGPointMake(self.num * 375, 0);
    self.navigationItem.title = self.chapterName;
    [ComicWebUtils requestContentWithcomicName:self.comicName andID:self.chapterID andCallBack:^(id obj) {
       NSArray *arr = obj;
        self.myImageSV.contentSize = CGSizeMake(arr.count * 375, 0);
        self.imageArr = arr;
        for (int i = 0; i < arr.count; i++)
        {
            NSDictionary *dict = arr[i];
            NSString *path = dict[@"imageUrl"];
            UIImageView *tempImageV = [[UIImageView alloc] initWithFrame:CGRectMake(i * 375, 0, 375, 603)];
            [self.myImageSV addSubview:tempImageV];
//            [tempImageV setImageWithURL:[NSURL URLWithString:path]];
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:path]];
                UIImage *image = [UIImage imageWithData:data];
                dispatch_async(dispatch_get_main_queue(), ^{
                    tempImageV.image = image;
                });
                
            });
           
        }
//        NSDictionary *dict = weakSelf.allImage[weakSelf.num];
//        NSString *path = dict[@"imageUrl"];
////        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:path]];
////        UIImage *image = [UIImage imageWithData:data];
//        [imageV setImageWithURL:[NSURL URLWithString:path]];
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
