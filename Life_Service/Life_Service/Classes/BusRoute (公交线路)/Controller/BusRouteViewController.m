//
//  BusRouteViewController.m
//  Life_Service
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BusRouteViewController.h"
#import "RouteSearchViewController.h"
#import "AllRealTimeRoute.h"
#import "BusWebUtils.h"

@interface BusRouteViewController ()


@property (weak, nonatomic) IBOutlet UIButton *mapLocationButton;
@property (weak, nonatomic) IBOutlet UIButton *CollectionButton;

@end

@implementation BusRouteViewController
- (IBAction)mapLocationButtton:(UIButton *)sender {
    RouteSearchViewController *myVc = [[RouteSearchViewController alloc]init];
    
    [self.navigationController pushViewController:myVc animated:YES];
//    [self presentViewController:myVc animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
        [BusWebUtils requestCityWithName:@"深圳" andBusRouteWithName:@"m282" andCallback:^(id obj) {
        }];
        [BusWebUtils requestCityWithName:@"苏州" andbusStationName:@"沪宁城铁园区站公交站" andCallback:^(id obj) {
    
        }];
    
//    NSString *str = @"116.461368,39.91791666666666;116.364736,39.899546666666666";
//    
//    NSArray *arrayStr= [str componentsSeparatedByString:@";"];
//    for (NSString *str in arrayStr) {
//        NSArray *arrayStr= [str componentsSeparatedByString:@","];
//        for (NSString *str in arrayStr) {
//            CGFloat coordinateList =  [str doubleValue];
//            NSLog(@"%f",coordinateList);
//        }
//        //        NSLog(@"%@",arrayStr);
//        
//    }
//    
//    [BusWebUtils requestCityWithName:@"苏州" andCoordinates:@"116.461368,39.91791666666666;116.364736,39.899546666666666" andtransferType:@"0" andCallback:^(id obj) {
//        
//    }];
//    
//
//    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
