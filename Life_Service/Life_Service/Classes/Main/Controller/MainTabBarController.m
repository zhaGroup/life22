//
//  MainTabBarController.m
//  Life_Service
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MainTabBarController.h"
#import "MainViewController.h"
#import "ComicBookViewController.h"
#import "StockViewController.h"
#import "BusRouteViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    MainViewController *weatherVC = [[MainViewController alloc] init];
    ComicBookViewController *bookVC = [[ComicBookViewController alloc] init];
    StockViewController *stockVC = [[StockViewController alloc] init];
    BusRouteViewController *busVC = [[BusRouteViewController alloc] init];
    
    weatherVC.title = @"天气预报";
    bookVC.title = @"漫画书";
    stockVC.title = @"火车查询";
    busVC.title = @"公交线路";
    
    self.tabBar.tintColor = [UIColor orangeColor];
    
//    weatherVC.tabBarItem.image = [UIImage imageNamed:@"cm_cream_btn_normal"];
//    weatherVC.tabBarItem.selectedImage = [UIImage imageNamed:@"cm_cream_btn_highlighted"];
    
    bookVC.tabBarItem.image = [UIImage imageNamed:@"line_map"];
    bookVC.tabBarItem.selectedImage = [UIImage imageNamed:@"full_map"];
    
    busVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_search_normal"];
    busVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_search_selected"];
    
    [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:weatherVC]];
    [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:bookVC]];
    [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:stockVC]];
    [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:busVC]];
    
    
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
