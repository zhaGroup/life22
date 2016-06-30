//
//  todayWeather.m
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "todayWeather.h"

@implementation todayWeather
-(instancetype)initWithDic:(NSDictionary *)dic
{
    if (self=[super init])
    {
        self.weather=dic[@"weather"];
        self.temperature=dic[@"temperature"];
        self.wind=dic[@"wind"];
        self.date_y=dic[@"date_y"];
        self.dressing_advice=dic[@"dressing_advice"];
        self.week=dic[@"week"];
    }
    return self;
}
@end
