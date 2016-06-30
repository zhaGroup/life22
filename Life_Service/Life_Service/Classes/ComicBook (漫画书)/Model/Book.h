//
//  Book.h
//  Demo-manhuashu
//
//  Created by tarena on 16/6/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *type;
@property (nonatomic,copy) NSString *area;
@property (nonatomic,copy) NSString *coverImg;
-(instancetype)initWithDictionary:(NSDictionary*)dict;


@end
