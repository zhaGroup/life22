//
//  BookCell.m
//  MyManhua
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BookCell.h"

@interface BookCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeName;
@property (weak, nonatomic) IBOutlet UILabel *areaLabel;

@end

@implementation BookCell

-(void)setBook:(Book *)book
{
    _book = book;
    self.nameLabel.text = book.name;
    self.typeName.text = book.type;
    self.areaLabel.text = book.area;
    //    NSLog(@"%@",book.coverImg);
    //    [self.imageV setImageWithURL:[NSURL URLWithString:book.coverImg] placeholderImage:[UIImage imageNamed:@"2.png"]];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:book.coverImg]];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imageV.image = [UIImage imageWithData:data];
        });
        
    });
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
