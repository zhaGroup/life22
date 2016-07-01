//
//  CheCiCell.h
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheCiCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *arrived_time;
@property (weak, nonatomic) IBOutlet UILabel *train_id;

@property (weak, nonatomic) IBOutlet UILabel *station_name;
@property (weak, nonatomic) IBOutlet UILabel *leave_time;
@end
