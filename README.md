# ScalableNav
####下拉放大,上滑缩小

####使用说明
在 tableView 中添加 ScalableNav 
 *建议设置

    [self.navigationController setNavigationBarHidden:YES];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.tableView.frame = self.view.bounds;

*添加ScalableNav

    QScalableNav *navView = [[QScalableNav alloc]initWithFrame:CGRectMake(0, 0, kSize.width, 200) backgroundImage:@"cover" headerImage:@"cover" title:@"MrQ" subTitle:@"这是一段个性签名"];
    [self.view addSubview:navView];
    navView.scrollView = self.tableView;

*header 的点击事件

    navView.imgActionBlock = ^(){
        NSLog(@"你点击了头像");
    };
