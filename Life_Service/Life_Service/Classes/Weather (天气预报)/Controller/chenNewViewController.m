//
//  chenNewViewController.m
//  Life_Service
//
//  Created by tarena on 16/7/5.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "chenNewViewController.h"
#import "netManager.h"
#import "ChenNews.h"
#import "ChenNewCell.h"
#import "WeBViewController.h"
@interface chenNewViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;

@property(nonatomic,strong)NSArray *newsArray;
@end

@implementation chenNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView=[[UITableView alloc]initWithFrame:self.view.bounds];
    
    
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    [self.tableView  registerNib:[UINib nibWithNibName:@"ChenNewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"cell"];
    
    
    
    [netManager GetNewsWithBlock:^(id obj) {
        //
        self.newsArray=obj;
        [self.tableView reloadData];
        
        
    }];
    
  
    [self.view addSubview:self.tableView];
    
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.newsArray.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     ChenNewCell   *cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.chenNew=self.newsArray[indexPath.row];
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 194;
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
//        设置Cell的动画效果为3D效果
//        设置x和y的初始值为0.1；
    cell.layer.transform = CATransform3DMakeScale(0.1, 0.1, 1);
    
    [UIView animateWithDuration:1 animations:^{
        cell.layer.transform = CATransform3DMakeScale(1, 1, 1);
    
      }];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WeBViewController *web=[[WeBViewController alloc]init];
    
    ChenNews *n=self.newsArray[indexPath.row];
    web.url=n.url;
    
    [self.navigationController pushViewController:web animated:YES];
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
