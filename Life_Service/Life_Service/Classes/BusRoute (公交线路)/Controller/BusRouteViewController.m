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
    // Do any additional setup after loading the view from its nib.
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
