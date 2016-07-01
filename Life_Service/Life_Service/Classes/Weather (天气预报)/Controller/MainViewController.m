//
//  MainViewController.m
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MainViewController.h"
#import "netManager.h"
#import "todayWeather.h"
#import "FutherViewController.h"
#import "CityListViewController.h"
@interface MainViewController ()<cityDelegate>

@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;

@property (weak, nonatomic) IBOutlet UILabel *temperatureLable;

@property (weak, nonatomic) IBOutlet UILabel *dateLable;

@property (weak, nonatomic) IBOutlet UILabel *windLable;

@property (weak, nonatomic) IBOutlet UILabel *weekLabel;

@property (weak, nonatomic) IBOutlet UITextView *adviceTextV;

@property (weak, nonatomic) IBOutlet UILabel *cityLabel;

@property(nonatomic,strong)UITableView  *tableView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
   
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    UIBarButtonItem *cityItem=[[UIBarButtonItem alloc]initWithTitle:@"城市" style:UIBarButtonItemStylePlain  target:self action:@selector(chooseCity)];
    
    self.navigationItem.rightBarButtonItem=cityItem;
    
    
    
    [netManager getTodayWeatherWithCityName:self.cityLabel.text andBlcok:^(id obj) {
        todayWeather *t=obj;
        self.weatherLabel.text=t.weather;
        self.temperatureLable.text=t.temperature;
        self.dateLable.text=t.date_y;
        self.windLable.text=t.wind;
        self.weekLabel.text=t.week;
        self.adviceTextV.text=t.dressing_advice;
    }];
}





//选择城市
-(void)chooseCity
{
    CityListViewController *city=[[CityListViewController alloc]init];
    
    city.delegate=self;
    
    [self.navigationController pushViewController:city animated:YES];
    
}

-(void)toChooseCity:(NSString *)cityName
{
    self.cityLabel.text=cityName;
}
- (IBAction)getFutureWeather:(UIButton *)sender
{
    FutherViewController *futher=[[FutherViewController alloc]init];
    
    futher.title=self.cityLabel.text;
    
    
    
    [self.navigationController pushViewController:futher animated:YES];
}




@end
