//
//  WebUtils.m
//  Demo-manhuashu
//
//  Created by tarena on 16/6/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ComicWebUtils.h"
#import "AFNetworking.h"
#import "Book.h"
#import "Chapter.h"

@implementation ComicWebUtils
+(void)requestCartoonCategoryWithCallBack:(MyCallBack)callBack
{
    NSString *path = @"http://japi.juhe.cn/comic/category";
    NSDictionary *params = @{@"key":@"96254656e2354e183efeea62c2eca224"};
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        NSArray *arr = dict[@"result"];
        dispatch_async(dispatch_get_main_queue(), ^{
            callBack(arr);
        });
    } failure:nil];
}
+(void)requestCartoonBookWithTypeName:(NSString *)typeName andCallBack:(MyCallBack)callBack
{
    NSString *path = @"http://japi.juhe.cn/comic/book";
    NSDictionary *params = @{@"type":typeName, @"key":@"96254656e2354e183efeea62c2eca224"};
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        NSArray *arr = dict[@"result"][@"bookList"];
        NSMutableArray *allB = [NSMutableArray arrayWithCapacity:arr.count];
        for (NSDictionary *bookDic in arr) {
            Book *b = [[Book alloc] initWithDictionary:bookDic];
            [allB addObject:b];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            callBack(allB);
        });
    } failure:nil];
}

+(void)requestBookCapterWithNicName:(NSString *)nicName andCallBack:(MyCallBack)callBack
{
    NSString *path = @"http://japi.juhe.cn/comic/chapter";
    NSDictionary *params = @{@"comicName":nicName , @"key":@"96254656e2354e183efeea62c2eca224"};
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        NSArray *arr = dict[@"result"][@"chapterList"];
        NSMutableArray *allChapter = [NSMutableArray array];
        for (NSDictionary *chapDic in arr) {
            Chapter *chap = [[Chapter alloc] initWithDictionary:chapDic];
            [allChapter addObject:chap];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            callBack(allChapter);
        });
    } failure:nil];
}

+(void)requestContentWithcomicName:(NSString *)comicName andID:(NSNumber *)chapterID andCallBack:(MyCallBack)callBack
{
    NSString *path = @"http://japi.juhe.cn/comic/chapterContent";
    NSDictionary *params = @{@"key":@"96254656e2354e183efeea62c2eca224", @"id":chapterID, @"comicName":comicName};
//    NSLog(@"%@-----%@",chapterID,comicName);
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
//        NSLog(@"dict = %@",dict);
        NSArray *arr = dict[@"result"][@"imageList"];
//        NSLog(@"---%@",arr);
        callBack(arr);
    } failure:nil];
}

@end





















