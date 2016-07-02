//
//  futherWeather.m
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "futherWeather.h"

@implementation futherWeather

-(instancetype)initWithDic:(NSDictionary *)dic
{
    if (self=[super init])
    {
        
        NSString *mainDescription=dic[@"weather"][0][@"main"];
        self.mainDescription=[self changeToChinese:mainDescription];
        
        self.pressure=[NSString stringWithFormat:@"%@Pa",dic[@"main"][@"pressure"]];
        self.humidity=[NSString stringWithFormat:@"%@%%rh",dic[@"main"][@"humidity"]];
        
        
        NSNumber *temp=dic[@"main"][@"temp"];
        self.temp=[self changetypeWith:temp];
        
        
        NSNumber *temp_min=dic[@"main"][@"temp_min"];
        
        self.temp_min=[self changetypeWith:temp_min];
        
        
        NSNumber *temp_max=dic[@"main"][@"temp_max"];
        
        self.temp_max=[self changetypeWith:temp_max];
        
        self.speed=[NSString stringWithFormat:@"%@m/s",dic[@"wind"][@"speed"]];
        
        self.time=dic[@"dt_txt"];
      
    }
    return self;
}


-(NSString*)changetypeWith:(NSNumber *)number
{
    int tep=[number intValue]-273;
    
    return [ NSString stringWithFormat:@"%@℃" ,[NSNumber numberWithInt:tep] ];
}

-(NSString*)changeToChinese:(NSString*)name
{
    if ([name isEqualToString:@"Clouds"])
    {
        return @"多云";
    }
    else if ([name isEqualToString:@"Rain"])
        
    {
        return @"下雨";
    }
    else if ([name isEqualToString:@"Clear"])
        
    {
        return @"晴朗";
    }
    
    else
    {
        return @"晴天";
    }
    
}
@end
