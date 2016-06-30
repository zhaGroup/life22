//
//  Book.m
//  Demo-manhuashu
//
//  Created by tarena on 16/6/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "Book.h"

@implementation Book
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.name = dict[@"name"];
        self.type = dict[@"type"];
        self.area = dict[@"area"];
        self.coverImg = dict[@"coverImg"];
    }
    return self;
}


@end
