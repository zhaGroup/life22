//
//  busRoute.h
//  Life_Service
//
//  Created by Ronald Arthas on 16/7/4.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface busRoute : NSObject

@property (nonatomic, copy)NSString *cityname;
@property (nonatomic, copy)NSString *busRoute;
@property (nonatomic, copy)NSString *busStation;
@property (nonatomic, copy)NSString *coordinates;
@property (nonatomic, copy)NSString *transferType;

-(instancetype)initWithDictionary:(NSDictionary *)dict;

@end
