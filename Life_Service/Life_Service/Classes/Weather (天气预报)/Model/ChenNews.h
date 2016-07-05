//
//  ChenNews.h
//  Life_Service
//
//  Created by tarena on 16/7/5.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChenNews : NSObject
@property(nonatomic,copy)NSString*newsTitle;
@property(nonatomic,copy)NSString*date;
@property(nonatomic,copy)NSString*author_name;
@property(nonatomic,copy)NSString*url;
@property(nonatomic,copy)NSString*realtype;


@property(nonatomic,copy)NSString *imageOne;


-(instancetype)initWithDic:(NSDictionary*)dic;

@end
