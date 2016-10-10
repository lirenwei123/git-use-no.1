//
//  ViewController.m
//  系统自带tableview添加子视图练习
//
//  Created by rwli on 16/9/30.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tabv =[[UITableView alloc]initWithFrame:CGRectMake(0, 20, 414, 600) style:UITableViewStyleGrouped];
    tabv.separatorColor =[UIColor redColor];
    tabv.separatorStyle  =UITableViewCellSeparatorStyleSingleLine;
    tabv.delegate =self;
    tabv.dataSource =self;
    [self.view addSubview:tabv];
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 10;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return section%2==0?4:2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cc"];
    if (cell==nil) {
        cell =[[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:@"cc"];
    }
    cell.textLabel.text =@"da";
    cell.detailTextLabel.text =@"small";
    cell.accessoryType =UITableViewCellAccessoryDetailButton ;
    for (int i=0; i<5; i++) {
        UILabel *lab =[[UILabel alloc]initWithFrame:CGRectMake(60+30*i, 0, 60, 50)];
        lab.text =[NSString stringWithFormat:@"i=%d",i];
        lab.backgroundColor=[UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0  blue:arc4random_uniform(256)/255.0  alpha:1];
        [cell.contentView addSubview:lab];
        
    }
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
