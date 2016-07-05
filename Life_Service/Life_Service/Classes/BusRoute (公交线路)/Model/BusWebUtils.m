//
//  BusWebUtils.m
//  Life_Service
//
//  Created by Ronald Arthas on 16/6/30.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BusWebUtils.h"
#import "busRoute.h"
#import <AFNetworking.h>


@implementation BusWebUtils

+(void)requestCityWithName:(NSString *)cityname andBusRouteWithName:(NSString *)busRouteName  andCallback:(MyCallback)callback{
    
    NSString *path = @"http://op.juhe.cn/189/bus/busline";
    //要搜索的东西，输入框输入，参数；
    NSDictionary *params = @{@"city":cityname, @"bus":busRouteName, @"key":@"901cc341a65fff2bfd15404670be1422"};
    NSLog(@"%@",params);
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *busRoutDict = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        NSLog(@"%@",busRoutDict);
        //根据关键字去解析数据；//key_name 线路名称，stationdes 站台列表，name 站台名
        //busRoute *busRouteInfo = [[busRoute alloc]initWithDictionary:busRoutDict[@"result"][@"key_name"]];
        //NSArray *arr = dict[@"result"];//[@"key_name"][@"stationdes"][@"name"];
        //forin(name in stationdes)
        //NSMutableArray *allBs = [NSMutableArray arrayWithCapacity:arr.count];
        dispatch_async(dispatch_get_main_queue(), ^{
           // callback(arr);
        });
    } failure:nil];
}


+(void)requestCityWithName:(NSString *)cityname andbusStationName:(NSString *)busStationName  andCallback:(MyCallback)callback{
    
    
    NSString *path = @"http://op.juhe.cn/189/bus/station";
    //要搜索的东西，输入框输入，参数；
    NSDictionary *params1 = @{@"city":cityname, @"station":busStationName, @"key":@"901cc341a65fff2bfd15404670be1422"};
//    NSLog(@"%@",params1);
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:path parameters:params1 progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString *str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"jsonStr = %@",str);
        NSDictionary *busStationDict = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
//        NSLog(@"busStationDict = %@",busStationDict);
    
             callback(busStationDict);

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error = %@", error);
    }];
}

+(void)requestCityWithName:(NSString *)cityname andCoordinates:(NSString *)Coordinates andtransferType:(NSString *)transferType andCallback:(MyCallback)callback{
    
    
    NSString *path = @"http://op.juhe.cn/189/bus/transfer";
    //要搜索的东西，输入框输入，参数；
    NSDictionary *params2 = @{@"city":cityname,@"xys":Coordinates, @"type":transferType,@"key":@"901cc341a65fff2bfd15404670be1422"};
    NSLog(@"%@",params2);
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:path parameters:params2 progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString *str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"dict = %@",str);
        NSString *busTransTypeDict = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        NSLog(@"busTransTypeDict:%@",busTransTypeDict);
//        for (NSArray *alphasig in responseObject) {
//            NSLog(@"%@",alphasig);
//        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            // callback(arr);
        });
    } failure:nil];

}

@end
