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

//得到今天的天气
+(void)getTodayWeatherWithCityName:(NSString *)cityName andBlcok:(MycallBack)block
{
    NSString *path=@"http://v.juhe.cn/weather/index";
    NSDictionary *params=@{@"key":chenKey,@"cityname":cityName};
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    manager.responseSerializer=[AFHTTPResponseSerializer serializer];
    
    [manager GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       
        NSDictionary *DataDic=[NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        NSDictionary *today=DataDic[@"result"][@"today"];
       

        todayWeather *t=[[todayWeather alloc]initWithDic:today];
        block(t);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       
        NSLog(@"%@",error);
    }];
}

//得到未来的天气
+(void)getFutherWeatherWithCityName:(NSString *)cityName andBlcok:(MycallBack)block
{
    NSString *path=@"http://v.juhe.cn/weather/index";
    NSDictionary *params=@{@"key":chenKey,@"cityname":cityName};
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    manager.responseSerializer=[AFHTTPResponseSerializer serializer];
    
    [manager GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *DataDic=[NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        
        NSDictionary *future=DataDic[@"result"][@"future"];
        NSMutableArray *mutableArray=[NSMutableArray array];
        
        
        //得到乱序的时间 所有对象的Key
        NSArray *array =[future allKeys];
      
        //排序 对时间
       NSArray *cityNewKey= [ array sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
           return [(NSString*) obj1 compare:(NSString*)obj2];
        }];
        
       
        for (int i=0; i<cityNewKey.count; i++)
        {
        NSString *key=cityNewKey[i];
        NSDictionary *dic=future[key];
        futherWeather   *t=[[futherWeather alloc]initWithDic:dic];
        [mutableArray addObject:t];
        }
        block(mutableArray);
       
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
    }];
}


+(void)getCityWithBlock:(MycallBack)block
{
    NSString *path=@"http://v.juhe.cn/weather/citys";
    NSDictionary *params=@{@"key":chenKey };
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    manager.responseSerializer=[AFHTTPResponseSerializer serializer];
    
    [manager GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *DataDic=[NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        
        NSArray *cityArray=DataDic[@"result"];
    
        NSMutableArray *mutableArray=[NSMutableArray array];
        
        for (int i=0; i<cityArray.count; i++)
        {
            NSDictionary *cityDic=cityArray[i];
            WeatherCity *city=[[WeatherCity alloc]initWithDic:cityDic];
            [mutableArray addObject:city];
        }
        block(mutableArray);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
    }];
}

@end
