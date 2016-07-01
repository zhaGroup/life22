//
//  zwebUtil.h
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^MyCallBack)(id obj);
@interface zwebUtil : NSObject
+(void)reqestCheCiNameWithName:(NSString *)name andCallBack:(MyCallBack)callBack;

@end
