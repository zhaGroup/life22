//
//  FutureCell.h
//  Life_Service
//
//  Created by tarena on 16/6/30.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "futherWeather.h"
@interface FutureCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;


@property (weak, nonatomic) IBOutlet UILabel *windLabel;

@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UILabel *weekLabel;

@property(nonatomic,strong)futherWeather *futher;



@end
