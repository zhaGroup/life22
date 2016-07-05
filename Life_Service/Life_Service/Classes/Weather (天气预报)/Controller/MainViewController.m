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
#import "chenNewViewController.h"
@interface MainViewController ()


@property (weak, nonatomic) IBOutlet UITextField *searchTF;


@property (weak, nonatomic) IBOutlet UILabel *lonLabel;
@property (weak, nonatomic) IBOutlet UILabel *latLabel;

@property (weak, nonatomic) IBOutlet UILabel *cityName;

@property (weak, nonatomic) IBOutlet UILabel *mianDisLabel;

@property (weak, nonatomic) IBOutlet UILabel *minTepLabel;

@property (weak, nonatomic) IBOutlet UILabel *avTepLabel;

@property (weak, nonatomic) IBOutlet UILabel *maxTepLabel;

@property (weak, nonatomic) IBOutlet UILabel *humidityLabel;

@property (weak, nonatomic) IBOutlet UILabel *pressureLabel;

@property (weak, nonatomic) IBOutlet UILabel *windSpeedLabel;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.searchTF becomeFirstResponder];
   
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    


    [self getWeatherData];
  
}

-(void)getWeatherData
{
    [netManager GEtCityWeatherWithCityName:self.searchTF.text andBlock:^(id obj)
     {
         
         todayWeather *t=obj;
         self.cityName.text=t.name;
         
         self.lonLabel.text=t.lon;
         
         self.latLabel.text=t.lat;
         
         self.mianDisLabel.text=t.mainDescription;
         
         self.minTepLabel.text=t.temp_min;
         self.avTepLabel.text=t.temp;
         
         self.maxTepLabel.text=t.temp_max;
         
         self.humidityLabel.text=t.humidity;
         
         self.pressureLabel.text=t.pressure;
         
         self.windSpeedLabel.text=t.speed;
         
     }];
}
//搜索天气
- (IBAction)searchData:(UIButton *)sender
{
    [self getWeatherData];
    
    [self.searchTF resignFirstResponder];
}
//点击空白收起键盘
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.searchTF resignFirstResponder];
}

- (IBAction)getFutureWeaher:(UIButton *)sender
{
    FutherViewController *future=[[FutherViewController alloc]init];
    
    future.title=self.cityName.text;
    [self.navigationController pushViewController:future animated:YES];
}


- (IBAction)toNew:(UIButton *)sender
{
    chenNewViewController *new=[[chenNewViewController alloc]init];
    
    [self.navigationController pushViewController:new animated:YES];
}



@end
