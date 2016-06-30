//
//  futherWeather.m
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "futherWeather.h"

@implementation futherWeather

-(instancetype)initWithDic:(NSDictionary*)dic
{
    if (self=[super init])
    {
//        @property(nonatomic,copy)NSString* temperature;
//        @property(nonatomic,copy)NSString* weather;
//        @property(nonatomic,copy)NSString* wind;
//        @property(nonatomic,copy)NSString* week;
//        @property(nonatomic,copy)NSString* date;
        
        self.temperature=dic[@"temperature"];
        self.weather=dic[@"weather"];
        self.wind=dic[@"wind"];
        self.week=dic[@"week"];
        self.date=dic[@"date"];
    
    }
    return self;
}
@end
