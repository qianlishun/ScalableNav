//
//  ViewController.m
//  ScalableNav
//
//  Created by Mr.Q on 16/8/1.
//  Copyright © 2016年 MrQ. All rights reserved.
//

#import "ViewController.h"
#import "QScalableNav.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;

@end

static NSString *const kCellID = @"cell";

@implementation ViewController

- (UITableView *)tableView{

    if (_tableView == nil) {
        UITableView *tableView = [[UITableView alloc]init];
        tableView.backgroundColor = [UIColor whiteColor];
        tableView.delegate = self;
        tableView.dataSource = self;

        [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellID];
        [self.view addSubview:tableView];
        _tableView = tableView;
    }

    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.navigationController setNavigationBarHidden:YES];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

    self.tableView.frame = self.view.bounds;

    QScalableNav *navView = [[QScalableNav alloc]initWithFrame:CGRectMake(0, 0, kSize.width, 200) backgroundImage:@"cover" headerImage:@"cover" title:@"MrQ" subTitle:@"这是一段个性签名"];

    navView.scrollView = self.tableView;
    navView.imgActionBlock = ^(){
        NSLog(@"你点击了头像");
    };
    [self.view addSubview:navView];}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellID forIndexPath:indexPath];

    cell.textLabel.text = [NSString stringWithFormat:@"text%zd",indexPath.row];

    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}


@end
