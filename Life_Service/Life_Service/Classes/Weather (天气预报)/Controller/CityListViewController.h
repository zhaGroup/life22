//
//  CityListViewController.h
//  Life_Service
//
//  Created by tarena on 16/6/30.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol cityDelegate <NSObject>

-(void)toChooseCity:(NSString *)cityName;

@end


@interface CityListViewController : UIViewController


@property(nonatomic)id<cityDelegate>delegate;
@end
