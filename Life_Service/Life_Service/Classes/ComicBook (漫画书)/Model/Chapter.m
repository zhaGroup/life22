//
//  Chapter.m
//  Demo-manhuashu
//
//  Created by tarena on 16/6/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "Chapter.h"

@implementation Chapter
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.name = dict[@"name"];
        self.chapterId = dict[@"id"];
    }
    return self;
}

@end
