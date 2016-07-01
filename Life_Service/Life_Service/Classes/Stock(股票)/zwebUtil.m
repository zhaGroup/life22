//
//  zwebUtil.m
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import "zwebUtil.h"
#import <AFNetworking.h>
#import "CheCiModel.h"
#import "CheCiInfoModel.h"
@implementation zwebUtil
+(void)reqestCheCiNameWithName:(NSString *)name andCallBack:(MyCallBack)callBack
{
    NSString *path = @"http://apis.juhe.cn/train/s";
    NSDictionary *dic = @{@"name":name,@"key":@"addf14d304d99243300dc44878648c3c"};
   
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:path parameters:dic progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *trainDic = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
//        NSLog(@"%@",trainDic);
        CheCiInfoModel *cheInfo = [[CheCiInfoModel alloc]initWithDictionary:trainDic[@"result"][@"train_info"]];
//        NSLog(@"%@",trainDic[@"result"][@"train_info"]);
        
        NSArray *dicArr = trainDic[@"result"][@"station_list"];
        NSMutableArray *allListArr = [NSMutableArray array];
        for (NSDictionary *dic2 in dicArr) {
            CheCiModel *c1 = [[CheCiModel alloc]initWithDictionary:dic2];
            [allListArr addObject:c1];
            
            
        }
        cheInfo.cheCiModelArr = allListArr;
//        NSLog(@"cheInfo = %@",cheInfo.start);
        dispatch_async(dispatch_get_main_queue(), ^{
            callBack(cheInfo);

        });
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];

}
@end
