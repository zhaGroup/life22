//
//  ContentViewController.h
//  Demo-manhuashu
//
//  Created by tarena on 16/6/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentViewController : UIViewController
@property (nonatomic,copy) NSString *comicName;
@property (nonatomic,copy) NSString *chapterName;
@property (nonatomic,strong) NSNumber *chapterID;
@property (nonatomic,assign) NSInteger num;
@property (nonatomic,strong) NSArray *chapters;

@end
