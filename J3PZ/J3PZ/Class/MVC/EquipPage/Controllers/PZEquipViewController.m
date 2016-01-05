//
//  PZEquipViewController.m
//  J3PZ
//
//  Created by 千锋 on 16/1/4.
//  Copyright © 2016年 1111111111. All rights reserved.
//

#import "PZEquipViewController.h"
#import "PZEquipCell.h"


@interface PZEquipViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView * tableView;
@property(nonatomic,strong)NSMutableArray * dataArray;

@end

@implementation PZEquipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
#pragma mark - createUI
-(void)createTableView{

    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64,SCREEN_WIDTH ,SCREEN_HEIGHT - 64)];
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    //注册CELL
    [self.tableView registerNib:[UINib nibWithNibName:@"PZEquipCell" bundle:nil] forCellReuseIdentifier:@"PZEquipCell"];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 12;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PZEquipCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PZEquipCell" forIndexPath:indexPath];
    
    return cell;
}




@end
