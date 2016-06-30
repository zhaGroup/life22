//
//  WebUtils.h
//  Demo-manhuashu
//
//  Created by tarena on 16/6/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^MyCallBack)(id obj);

@interface ComicWebUtils : NSObject
+(void)requestCartoonCategoryWithCallBack:(MyCallBack)callBack;

+(void)requestCartoonBookWithTypeName:(NSString*)typeName andCallBack:(MyCallBack)callBack;

+(void)requestBookCapterWithNicName:(NSString*)nicName andCallBack:(MyCallBack)callBack;

+(void)requestContentWithcomicName:(NSString*)comicName andID:(NSNumber*)chapterID andCallBack:(MyCallBack)callBack;

@end
