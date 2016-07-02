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

@property (weak, nonatomic) IBOutlet UILabel *mainDescription;


@property (weak, nonatomic) IBOutlet UILabel *pressure;

@property (weak, nonatomic) IBOutlet UILabel *humidity;

@property (weak, nonatomic) IBOutlet UILabel *temp;

@property (weak, nonatomic) IBOutlet UILabel *temp_min;

@property (weak, nonatomic) IBOutlet UILabel *time;

@property (weak, nonatomic) IBOutlet UILabel *temp_max;

@property (weak, nonatomic) IBOutlet UILabel *speed;



@property(nonatomic,strong)futherWeather *futher;



//@property(nonatomic,copy)NSString* mainDescription;
//
//@property(nonatomic,copy)NSString* pressure;
//@property(nonatomic,copy)NSString* humidity;
//
//@property(nonatomic,copy)NSString* temp;
//@property(nonatomic,copy)NSString* temp_min;
//@property(nonatomic,copy)NSString* temp_max;
//
//@property(nonatomic,copy)NSString* speed;
@end
