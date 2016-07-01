//
//  CheCiModel.h
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CheCiModel : NSObject
@property (nonatomic,copy)NSString *arrived_time;
@property (nonatomic,copy)NSString *station_name;
@property (nonatomic,copy)NSString *leave_time;
@property (nonatomic,copy)NSString *train_id;



-(instancetype)initWithDictionary:(NSDictionary *)dic;
@end
