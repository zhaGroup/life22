//
//  busRoute.m
//  Life_Service
//
//  Created by Ronald Arthas on 16/7/4.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "busRoute.h"

@implementation busRoute

-(instancetype)initWithDictionary:(NSDictionary *)dict{
    self = [super init];
    if (self) {
        self.coordinates = dict[@"coordinates"];
        
        self.cityname = dict[@"cityname"];
        
        self.busRoute = dict[@"busRoute"];
        self.busStation = dict[@"busStation"];
        
        self.transferType = dict[@"transferType"];
    }
    return self;
}



@end
