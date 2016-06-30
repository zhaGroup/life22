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
    self.dateLabel.text=_futher.date;
    self.windLabel.text=_futher.wind;
    
}
@end
