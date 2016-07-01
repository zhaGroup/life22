//
//  CheCiInfoModel.m
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import "CheCiInfoModel.h"

@implementation CheCiInfoModel

-(instancetype)initWithDictionary:(NSDictionary *)dicInfo
{
    self = [super init];
    if (self) {
                self.start = dicInfo[@"start"];
                self.end = dicInfo[@"end"];
                self.mileage = dicInfo[@"mileage"];
                self.name = dicInfo[@"name"];
                self.endtime = dicInfo[@"endtime"];
                self.starttime = dicInfo[@"starttime"];
    }
    return self;

}
@end
