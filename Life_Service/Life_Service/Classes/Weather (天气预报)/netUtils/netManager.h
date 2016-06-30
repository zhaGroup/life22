//
//  netManager.h
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^MycallBack)(id obj);

@interface netManager : NSObject


//得到今天的天气数据
+(void)getTodayWeatherWithCityName:(NSString*)cityName andBlcok:(MycallBack)block;

//得到明天的天气
+(void)getFutherWeatherWithCityName:(NSString *)cityName andBlcok:(MycallBack)block;

//得到所有城市
+(void)getCityWithBlock:(MycallBack)block;
@end
