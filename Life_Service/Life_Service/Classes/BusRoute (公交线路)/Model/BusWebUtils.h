//
//  BusWebUtils.h
//  Life_Service
//
//  Created by Ronald Arthas on 16/6/30.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^MyCallback) (id obj);
@interface BusWebUtils : NSObject

+(void)requestCityWithName:(NSString *)cityname andCallback:(MyCallback)callback;
//+(void)requestbusRouteWithName:(NSString *);



@end
