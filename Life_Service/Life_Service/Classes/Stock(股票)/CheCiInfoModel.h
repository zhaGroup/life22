//
//  CheCiInfoModel.h
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CheCiInfoModel.h"
@interface CheCiInfoModel : NSObject
@property (nonatomic,copy)NSString *start;
@property (nonatomic,copy)NSString *end;
@property (nonatomic,strong)NSNumber *mileage;
@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *endtime;
@property (nonatomic,copy)NSString *starttime;
@property (nonatomic,strong)NSArray *cheCiModelArr;
-(instancetype)initWithDictionary:(NSDictionary *)dicInfo;
@end
