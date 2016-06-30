//
//  CityListViewController.m
//  Life_Service
//
//  Created by tarena on 16/6/30.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "CityListViewController.h"
#import "netManager.h"
#import "WeatherCity.h"
@interface CityListViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray *cityArray;
@end

@implementation CityListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:self.view.bounds];
    
    imageV.image=[UIImage imageNamed:@"bg_night_rain.jpg"];
    
    [self.view addSubview:imageV];
    
    
    self.tableView.backgroundColor=[UIColor clearColor];
    
    
    [netManager getCityWithBlock:^(id obj) {
        self.cityArray=obj;
        
        [self.tableView reloadData];
    }];
    
    
    [self.view addSubview:self.tableView];
    
    
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     return  self.cityArray.count;
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        
    }
    WeatherCity *city=self.cityArray[indexPath.row];
    
    cell.textLabel.text=city.district;
    
    cell.textLabel.textColor=[UIColor greenColor];
    
    
    cell.detailTextLabel.text=city.city;
    
    cell.backgroundColor=[UIColor clearColor];
    NSLog(@"%@",city.city);
    
    return cell;
    
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
