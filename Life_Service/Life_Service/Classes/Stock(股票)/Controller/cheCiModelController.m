//
//  cheCiModelController.m
//  demo1
//
//  Created by tarena035 on 16/6/30.
//  Copyright © 2016年 uita. All rights reserved.
//

#import "cheCiModelController.h"
#import "zwebUtil.h"
#import "CheCiInfoModel.h"
#import "CheCiModel.h"
#import "CheCiCell.h"
@interface cheCiModelController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *cheCiModelInfoTabelVice;
@property (weak, nonatomic) IBOutlet UILabel *startModelInfo;
@property (weak, nonatomic) IBOutlet UILabel *endModelInfo;
@property (weak, nonatomic) IBOutlet UILabel *starttimeModelInfo;
@property (weak, nonatomic) IBOutlet UILabel *endtimeModelInfo;
@property (nonatomic,strong)CheCiInfoModel *cheInfo;

@end

@implementation cheCiModelController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   
    [zwebUtil reqestCheCiNameWithName:self.queryName andCallBack:^(id obj) {
        self.cheInfo = obj;
//        NSLog(@"obj = %@",self.cheInfo);
        [self.cheCiModelInfoTabelVice reloadData];
        [self cheInfoMessage:self.cheInfo];
    }];
//    NSLog(@"%@",self.cheInfo.start);
//    
//    NSLog(@"checi = %ld",self.cheInfo.cheCiModelArr.count);
    self.cheCiModelInfoTabelVice.delegate = self;
    self.cheCiModelInfoTabelVice.dataSource = self;
    
    [self.cheCiModelInfoTabelVice registerNib:[UINib nibWithNibName:@"CheCiCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"checiCell"];
}

-(void)cheInfoMessage:(CheCiInfoModel*)cheInfo
{
    self.startModelInfo.text = cheInfo.start;
    self.endModelInfo.text = cheInfo.end;
    self.starttimeModelInfo.text = cheInfo.starttime;
    self.endtimeModelInfo.text = cheInfo.endtime;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cheInfo.cheCiModelArr.count;

}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CheCiCell *cell = [tableView dequeueReusableCellWithIdentifier:@"checiCell" forIndexPath:indexPath];
    
    CheCiModel *cm = self.cheInfo.cheCiModelArr[indexPath.row];
    cell.arrived_time.text = cm.arrived_time;
    cell.train_id.text = cm.train_id;
    cell.station_name.text = cm.station_name;
    cell.leave_time.text = cm.leave_time;
//    NSLog(@"xx = %@",cell.station_name.text);
    return cell;
    
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
