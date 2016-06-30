//
//  ComicBookViewController.m
//  MyManhua
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ComicBookViewController.h"
#import "CartoonBookTableViewController.h"
#import "ComicWebUtils.h"

@interface ComicBookViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSMutableArray *myCartoons;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ComicBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = LYBlueColor;
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.myCartoons = [@[@"少年漫画",@"青年漫画",@"少女漫画",@"耽美漫画"] mutableCopy];
//    [ComicWebUtils requestCartoonCategoryWithCallBack:^(id obj) {
//        self.myCartoons = obj;
//        [self.tableView reloadData];
//    }];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}
#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.myCartoons.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSString *name = self.myCartoons[indexPath.row];
    cell.textLabel.text = name;
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CartoonBookTableViewController *cartoonB = [[CartoonBookTableViewController alloc] init];
    cartoonB.typeName = self.myCartoons[indexPath.row];
    [self.navigationController pushViewController:cartoonB animated:YES];
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
