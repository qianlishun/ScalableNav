# ScalableNav
#### 下拉放大,上滑缩小
#### 效果图

<img src="http://ww2.sinaimg.cn/mw690/e70bae90jw1f6i6wbl6wrg207f08e14r.gif"/>

很多参数没做什么适配调整,有可能因图片大小,屏幕尺寸而导致不合适,自行修改吧.
#### 使用说明

在 tableView 中添加 ScalableNav 

0.建议设置


    [self.navigationController setNavigationBarHidden:YES];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.tableView.frame = self.view.bounds;

1.添加ScalableNav


    QScalableNav *navView = [[QScalableNav alloc]initWithFrame:CGRectMake(0, 0, kSize.width, 200)
    backgroundImage:@"cover" headerImage:@"cover" title:@"MrQ" subTitle:@"这是一段个性签名"];

    navView.scrollView = self.tableView; //要写在 addSubview 之前

    [self.view addSubview:navView]; 

    // 设置昵称与签名颜色 (默认白色)
    [navView setTitleColor:[UIColor blackColor] subTitleColor:[UIColor blueColor]];


2.header 的点击事件


    navView.imgActionBlock = ^(){
        NSLog(@"你点击了头像");
    };
