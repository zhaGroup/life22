//
//  futureCell.m
//  天气预报
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "futureCell.h"

@implementation futureCell

- (void)awakeFromNib
{
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

   
}

//-(void)setFuture:(futherWeather *)future
//{
//    _future=future;
//    self.weatherLabel.text=future.weather;
//    
//    self.temperatureLabel.text=future.temperature;
//    
//    self.windLabel.text=future.wind;
//    self.weekLabel.text=future.week;
//    
//    self.dateLabel.text=_future.date;
//    
//    
//    
////    @property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
////    
////    @property (weak, nonatomic) IBOutlet UILabel *weatherLabel;
////    @property (weak, nonatomic) IBOutlet UILabel *windLabel;
////    
////    @property (weak, nonatomic) IBOutlet UILabel *weekLabel;
////    
////    @property (weak, nonatomic) IBOutlet UILabel *dateLabel
//}
@end
