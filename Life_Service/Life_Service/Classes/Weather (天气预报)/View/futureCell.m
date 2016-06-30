//
//  FutureCell.m
//  Life_Service
//
//  Created by tarena on 16/6/30.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "FutureCell.h"

@implementation FutureCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setFuther:(futherWeather *)futher
{
    _futher=futher;
    self.temperatureLabel.text=_futher.temperature;
    self.weekLabel.text=_futher.week;
    self.weatherLabel.text=_futher.weather;
    NSString *newDate=[self getGoodString:_futher.date];
    self.dateLabel.text=newDate;
    self.windLabel.text=_futher.wind;
    
}

-(NSString*)getGoodString:(NSString*)oldDate
{
    NSString *year=[oldDate substringToIndex:4];
    
    NSString *month=[oldDate substringWithRange:NSMakeRange(4, 2)];
    NSString *day=[oldDate substringFromIndex:6];
    
    NSString *new=[NSString stringWithFormat:@"%@年%@月%@日",year,month,day];
    return new;
}

@end
