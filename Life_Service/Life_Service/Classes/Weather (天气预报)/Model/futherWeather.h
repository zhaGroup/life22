//
//  futherWeather.h
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface futherWeather : NSObject
//"temperature": "26℃~32℃",
//"weather": "雷阵雨转多云",
//"weather_id": {},
//"wind": "南风3-4 级",
//"week": "星期四",
//"date": "20160630"


@property(nonatomic,copy)NSString* temperature;
@property(nonatomic,copy)NSString* weather;
@property(nonatomic,copy)NSString* wind;
@property(nonatomic,copy)NSString* week;
@property(nonatomic,copy)NSString* date;


-(instancetype)initWithDic:(NSDictionary*)dic;
@end
