//
//  ChenNewCell.m
//  Life_Service
//
//  Created by tarena on 16/7/5.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ChenNewCell.h"
#import <UIImageView+AFNetworking.h>
@implementation ChenNewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setChenNew:(ChenNews *)chenNew
{
    _chenNew=chenNew;
    self.titleLabel.text=_chenNew.newsTitle;
    
    self.typeLabel.text=_chenNew.realtype;
    self.authorLabel.text=_chenNew.author_name;
    self.dateLabel.text=_chenNew.date;
    [self.imageOne setImageWithURL:[NSURL URLWithString:_chenNew.imageOne]];

}
@end
