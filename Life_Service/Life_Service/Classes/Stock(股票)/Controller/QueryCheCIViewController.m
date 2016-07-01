//
//  QueryCheCIViewController.m
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import "QueryCheCIViewController.h"
#import "cheCiModelController.h"
@interface QueryCheCIViewController ()
@property (weak, nonatomic) IBOutlet UITextField *cheCiName;
@property (weak, nonatomic) IBOutlet UIButton *queryBTN;

@end

@implementation QueryCheCIViewController
- (IBAction)queryBTNAction:(UIButton *)sender {
    cheCiModelController *cheVC = [[cheCiModelController alloc]initWithNibName:@"cheCiModelController" bundle:[NSBundle mainBundle]];
    cheVC.queryName = self.cheCiName.text;
    [self.navigationController pushViewController:cheVC animated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;


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
