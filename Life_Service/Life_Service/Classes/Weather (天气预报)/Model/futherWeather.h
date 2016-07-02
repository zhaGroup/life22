//
//  futherWeather.h
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface futherWeather : NSObject



@property(nonatomic,copy)NSString* mainDescription;

@property(nonatomic,copy)NSString* pressure;
@property(nonatomic,copy)NSString* humidity;

@property(nonatomic,copy)NSString* temp;
@property(nonatomic,copy)NSString* temp_min;
@property(nonatomic,copy)NSString* temp_max;

@property(nonatomic,copy)NSString* speed;

@property(nonatomic,copy)NSString* time;


-(NSString*)changetypeWith:(NSNumber *)number;

-(NSString*)changeToChinese:(NSString*)name;
-(instancetype)initWithDic:(NSDictionary*)dic;

@end
