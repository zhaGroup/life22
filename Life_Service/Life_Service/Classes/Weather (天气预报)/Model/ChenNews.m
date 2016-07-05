//
//  ChenNews.m
//  Life_Service
//
//  Created by tarena on 16/7/5.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ChenNews.h"

@implementation ChenNews
-(instancetype)initWithDic:(NSDictionary *)dic
{
    if (self=[super init])
    {
        self.newsTitle=dic[@"title"];
        self.date=dic[@"date"];
        self.author_name=dic[@"author_name"];
        self.url=dic[@"url"];
        self.realtype=dic[@"realtype"];
        
        self.imageOne=dic[@"thumbnail_pic_s"];;

        
    }
    return self;
}
@end








//@property(nonatomic,copy)NSString*title;
//@property(nonatomic,copy)NSString*date;
//@property(nonatomic,copy)NSString*author_name;
//@property(nonatomic,copy)NSString*url;
//@property(nonatomic,copy)NSString*realtype;
//
//
//@property(nonatomic,copy)NSString *imageOne;
//@property(nonatomic,copy)NSString *imageTwo;
//@property(nonatomic,copy)NSString *imageThree;