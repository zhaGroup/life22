//
//  FutherViewController.m
//  Life_Service
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "FutherViewController.h"
#import "netManager.h"
#import "futureCell.h"

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
    
    
    [netManager getFutherWeatherWithCityName:self.title andBlcok:^(id obj) {
        //
        self.weatherArray=obj;
//        NSLog(@"%@",self.weatherArray);
        
        
        [self.tableView reloadData];
    }];
    
      [self.tableView registerNib:[UINib nibWithNibName:@"futureCell" bundle:nil] forCellReuseIdentifier:@"cell"];
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
    futureCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
//    cell.future=self.weatherArray[indexPath.row];
    
//    futherWeather *future=self.weatherArray[indexPath.row];
//    
//    NSLog(@"%@",future);
//    cell.weatherLabel.text=future.weather;
//    
//    cell.temperatureLabel.text=future.temperature;
//    
//    cell.windLabel.text=future.wind;
//    cell.weekLabel.text=future.week;
//    
////    cell.dateLabel.text=future.date;
    return cell;
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 87;
}
@end
