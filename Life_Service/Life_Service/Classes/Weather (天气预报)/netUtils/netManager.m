//
//  netManager.m
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "netManager.h"
#import <AFNetworking.h>
#import "todayWeather.h"
#import "futherWeather.h"
#import "WeatherCity.h"
@implementation netManager



//得到城市天气数据国外网站的
+(void)GEtCityWeatherWithCityName:(NSString *)string andBlock:(MycallBack)block
{
    NSString *path=@"http://api.openweathermap.org/data/2.5/weather";
    NSDictionary *params=@{@"appid":chenKey,@"q":string };
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    manager.responseSerializer=[AFHTTPResponseSerializer serializer];
    
    [manager GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *DataDic=[NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        
        todayWeather *today=[[todayWeather alloc]initWithDic:DataDic];
        block(today);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
    }];
}




@end
