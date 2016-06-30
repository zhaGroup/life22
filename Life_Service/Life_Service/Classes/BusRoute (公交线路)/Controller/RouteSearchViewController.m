//
//  RouteSearchViewController.m
//  Life_Service
//
//  Created by Ronald Arthas on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "RouteSearchViewController.h"
#import "AllRealTimeRoute.h"

@interface RouteSearchViewController ()
@property (weak, nonatomic) IBOutlet UITextField *busRouteSearchField;

@property (weak, nonatomic) IBOutlet UIButton *busRouteSearchButton;

@property (weak, nonatomic) IBOutlet UIButton *allRealRoutesButton;

@property (weak, nonatomic) IBOutlet UIButton *allCompanyRoutesButton;


@end

@implementation RouteSearchViewController
- (IBAction)backButton:(id)sender {


    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)allRealRoutesButton:(UIButton *)sender {
    AllRealTimeRoute *myVC2 = [[AllRealTimeRoute alloc]init];
     [self presentViewController:myVC2 animated:YES completion:nil];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
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
