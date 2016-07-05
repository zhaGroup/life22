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

//城市接口
//+(void)requestCityWithName:(NSString *)cityname andCallback:(MyCallback)callback;
//线路查询接口
+(void)requestCityWithName:(NSString *)cityname andBusRouteWithName:(NSString *)busRouteName  andCallback:(MyCallback)callback;
//站台查询接口
+(void)requestCityWithName:(NSString *)cityname andbusStationName:(NSString *)busStationName  andCallback:(MyCallback)callback;
//换乘接口
+(void)requestCityWithName:(NSString *)cityname andCoordinates:(NSString *)Coordinates andtransferType:(NSString *)transferType andCallback:(MyCallback)callback;
//换乘接口
//+(void)requestCityWithName:(NSString *)cityname andstartLatitude:(double *)starLatitude andstartLongitude:(double *)startLongitude andendLatitude:(double *)endLatitude andendLongitude:(double)endLogitude andPreference:(NSInteger *)Preference  andCallback:(MyCallback)callback;
//周边站台接口
//+(void)requestCityWithName:(NSString *)cityname andstartLatitude:(double *)starLatitude andstartLongitude:(double *)startLongitude andradiusDist:(int *)radiusDist andCallback:(MyCallback)callback;


@end
