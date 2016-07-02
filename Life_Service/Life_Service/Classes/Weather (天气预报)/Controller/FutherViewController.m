//
//  FutherViewController.m
//  Life_Service
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "FutherViewController.h"
#import "netManager.h"
#import "FutureCell.h"

@interface FutherViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSArray *weatherArray;
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation FutherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"%@",self.title);
    self.tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
  
    
    
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:self.view.bounds];
    
    imageV.image=[UIImage imageNamed:@"bg_na.jpg"];
    
    [self.view addSubview:imageV];
    
    
   
    
      [self.tableView registerNib:[UINib nibWithNibName:@"FutureCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:self.tableView];

    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.weatherArray.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FutureCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.futher=self.weatherArray[indexPath.row];
    
    cell.backgroundColor=[UIColor clearColor];
    return cell;
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 87;
}
@end
