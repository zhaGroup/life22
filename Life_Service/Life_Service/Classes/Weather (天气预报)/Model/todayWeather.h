//
//  todayWeather.h
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface todayWeather : NSObject

@property(nonatomic,copy)NSString* temperature;

@property(nonatomic,copy)NSString* weather;
@property(nonatomic,copy)NSString* wind;
@property(nonatomic,copy)NSString* week;
@property(nonatomic,copy)NSString* date_y;
@property(nonatomic,copy)NSString* dressing_advice;

-(instancetype)initWithDic:(NSDictionary*)dic;

@end
