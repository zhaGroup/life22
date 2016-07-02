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

//得到城市天气数据国外网站的
+(void)GEtCityWeatherWithCityName:(NSString *)string andBlock:(MycallBack)block;

+(void)GetCityFutureWeatherWithCityName:(NSString*)name andBlock:(MycallBack)block;


@end
