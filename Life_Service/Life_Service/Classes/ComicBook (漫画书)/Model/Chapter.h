//
//  Chapter.h
//  Demo-manhuashu
//
//  Created by tarena on 16/6/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chapter : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) NSNumber *chapterId;
-(instancetype)initWithDictionary:(NSDictionary*)dict;

@end
