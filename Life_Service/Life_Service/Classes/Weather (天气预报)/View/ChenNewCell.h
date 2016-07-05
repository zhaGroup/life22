//
//  ChenNewCell.h
//  Life_Service
//
//  Created by tarena on 16/7/5.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChenNews.h"
@interface ChenNewCell : UITableViewCell

@property(nonatomic,strong)ChenNews  *chenNew;


@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;


@property (weak, nonatomic) IBOutlet UILabel *authorLabel;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;


@property (weak, nonatomic) IBOutlet UIImageView *imageOne;



@end
