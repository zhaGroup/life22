//
//  CheCiCell.m
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import "CheCiCell.h"

@interface CheCiCell ()
@property (weak, nonatomic) IBOutlet UILabel *arrived_time;
@property (weak, nonatomic) IBOutlet UILabel *train_id;

@property (weak, nonatomic) IBOutlet UILabel *station_name;
@property (weak, nonatomic) IBOutlet UILabel *leave_time;

@end

@implementation CheCiCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
