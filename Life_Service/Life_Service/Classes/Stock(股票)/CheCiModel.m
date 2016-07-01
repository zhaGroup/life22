//
//  CheCiModel.m
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import "CheCiModel.h"

@implementation CheCiModel

-(instancetype)initWithDictionary:(NSDictionary *)dicTrain
{
    self = [super init];
    if (self) {
        self.arrived_time = dicTrain[@"arrived_time"];
        self.station_name = dicTrain[@"station_name"];
        self.leave_time = dicTrain[@"leave_time"];
        self.train_id = dicTrain[@"train_id"];
    }
    return self;
}
@end
