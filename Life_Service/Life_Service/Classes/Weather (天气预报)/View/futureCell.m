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
    self.mainDescription.text=_futher.mainDescription;
    self.pressure.text=_futher.pressure;
    self.humidity.text=_futher.humidity;
   
    self.temp.text=_futher.temp;
    self.temp_min.text=_futher.temp_min;
    self.temp_max.text=_futher.temp_max;
    
    self.time.text=_futher.time;
    
    self.speed.text=_futher.speed;
    
    
}

//@property (weak, nonatomic) IBOutlet UILabel *mainDescription;
//
//
//@property (weak, nonatomic) IBOutlet UILabel *pressure;
//
//@property (weak, nonatomic) IBOutlet UILabel *humidity;
//
//@property (weak, nonatomic) IBOutlet UILabel *temp;
//
//@property (weak, nonatomic) IBOutlet UILabel *temp_min;
//
//@property (weak, nonatomic) IBOutlet UILabel *time;
//
//@property (weak, nonatomic) IBOutlet UILabel *temp_max;
//
//@property (weak, nonatomic) IBOutlet UILabel *speed;



@end
