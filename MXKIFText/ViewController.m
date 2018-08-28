//
//  ViewController.m
//  MXKIFText
//
//  Created by Meng,Xia(CE QA) on 2018/8/28.
//  Copyright © 2018年 Meng,Xia(CE QA). All rights reserved.
//

#import "ViewController.h"
#import "FeedVC.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,retain) UITableView *feedTable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view, typically from a nib.
    _feedTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, self.view.frame.size.height-200) style:UITableViewStylePlain];
    _feedTable.delegate = self;
    _feedTable.dataSource = self;
    [_feedTable setAccessibilityLabel:@"zhufeed"];
    [self.view addSubview:_feedTable];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *iden = @"index";
    UITableViewCell * cell = nil;
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iden];
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, 100, 100)];
        lable.textColor = [UIColor blackColor];
        lable.tag = 100;
        [cell addSubview:lable];
    }
    UILabel *lables = [cell viewWithTag:100];
    lables.text = [NSString stringWithFormat:@"index%ld",(long)indexPath.row];
    if (indexPath.row == 0 & indexPath.section == 0) {
        cell.accessibilityLabel = @"First Cell";
    }
    
    return  cell;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
