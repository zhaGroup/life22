//
//  WeatherCity.m
//  Life_Service
//
//  Created by tarena on 16/6/30.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "WeatherCity.h"

@implementation WeatherCity

-(instancetype)initWithDic:(NSDictionary *)dic
{
    if (self=[super init])
    {
        self.province=dic[@"province"];
        self.city=dic[@"city"];
        self.district=dic[@"district"];
    }
    return self;
}
@end
