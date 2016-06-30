//
//  BookCapterTableViewController.m
//  Demo-manhuashu
//
//  Created by tarena on 16/6/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BookCapterTableViewController.h"
#import "ComicWebUtils.h"
#import "Chapter.h"
#import "ContentViewController.h"

@interface BookCapterTableViewController ()
@property (nonatomic,strong) NSMutableArray *allChapter;

@end

@implementation BookCapterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.allChapter = [NSMutableArray array];
    self.navigationItem.title = self.bookName;
    [ComicWebUtils requestBookCapterWithNicName:self.bookName andCallBack:^(id obj) {
        self.allChapter = obj;
        [self.tableView reloadData];
    }];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allChapter.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Chapter *c = self.allChapter[indexPath.row];
    cell.textLabel.text = c.name;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Chapter *c = self.allChapter[indexPath.row];
    ContentViewController *contectVC = [[ContentViewController alloc] init];
    contectVC.comicName = self.bookName;
    contectVC.chapterID= c.chapterId;
    contectVC.chapterName = c.name;
    contectVC.num = indexPath.row;
    contectVC.chapters = self.allChapter;
    [self.navigationController pushViewController:contectVC animated:YES];
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
