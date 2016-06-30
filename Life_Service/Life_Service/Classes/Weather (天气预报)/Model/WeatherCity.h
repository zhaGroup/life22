//
//  WeatherCity.h
//  Life_Service
//
//  Created by tarena on 16/6/30.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherCity : NSObject
@property(nonatomic,copy)NSString *province;
@property(nonatomic,copy)NSString *city;
@property(nonatomic,copy)NSString *district;

-(instancetype)initWithDic:(NSDictionary *)dic;

@end
