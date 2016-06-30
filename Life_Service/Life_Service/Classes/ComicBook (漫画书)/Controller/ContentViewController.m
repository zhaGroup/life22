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
//@property (weak, nonatomic) IBOutlet UIImageView *imageV;
//@property (nonatomic,strong) NSMutableArray *allImage;
@property (weak, nonatomic) IBOutlet UIScrollView *myImageSV;
@property (nonatomic,assign) NSInteger *page;

@end

@implementation ContentViewController
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSInteger pageNum = round(self.myImageSV.contentOffset.x / self.myImageSV.frame.size.width);
    Chapter *chapter = self.chapters[pageNum];
    self.navigationItem.title = chapter.name;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    self.myImageSV.contentSize = CGSizeMake(self.chapters.count * 375, 0);
    self.myImageSV.contentOffset = CGPointMake(self.num * 375, 0);
//    UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(self.num * 375, 0, 375, 603)];
//    imageV.backgroundColor = [UIColor redColor];
//    [self.myImageSV addSubview:imageV];
    self.navigationItem.title = self.chapterName;
//    __block typeof(ContentViewController*) weakSelf;
    [ComicWebUtils requestContentWithcomicName:self.comicName andID:self.chapterID andCallBack:^(id obj) {
       NSArray *arr = obj;
        for (int i = 0; i < arr.count; i++)
        {
            NSDictionary *dict = arr[i];
            NSString *path = dict[@"imageUrl"];
            UIImageView *tempImageV = [[UIImageView alloc] initWithFrame:CGRectMake(i * 375, 0, 375, 603)];
            [self.myImageSV addSubview:tempImageV];
//            [tempImageV setImageWithURL:[NSURL URLWithString:path]];
            NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:path]];
            UIImage *image = [UIImage imageWithData:data];
            dispatch_async(dispatch_get_main_queue(), ^{
                tempImageV.image = image;
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
