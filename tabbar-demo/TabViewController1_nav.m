//
//  TabViewController1_nav.m
//  tabbar-demo
//
//  Created by Jakey on 14-7-10.
//  Copyright (c) 2014年 Jakey. All rights reserved.
//

#import "TabViewController1_nav.h"
#import "AppDelegate.h"
@interface TabViewController1_nav ()

@end

@implementation TabViewController1_nav

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f)) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
        self.extendedLayoutIncludesOpaqueBars = NO;
        self.navigationController.navigationBar.translucent = NO;
        self.modalPresentationCapturesStatusBarAppearance = NO;
    }
    
    self.title = @"TabViewController1_nav";

}

- (BOOL)wantsFullScreenLayout
{
    return NO;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
   
    // 隐藏外部NavBar，显示内部NavBar
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    appDelegate.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden        = NO;
    
    if ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f)) {
        //设置nav颜色 包括状态栏
        self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    }
    
    //然后就可以使用下面的代码来设置状态栏风格了：
    //self.navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;

    //[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackTranslucent];
    
    //[[UINavigationBar appearance] setBarTintColor:[UIColor yellowColor]];

 
   
    
    if(self.navigationController.navigationBar.frame.origin.y==0) {
        //[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bar.png"] forBarMetrics:UIBarMetricsDefault];
        
        //这里面把navigationBar 高度加了20
        self.navigationController.navigationBar.frame = CGRectMake(0, 0, 320, self.navigationController.navigationBar.frame.size.height+20);
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
