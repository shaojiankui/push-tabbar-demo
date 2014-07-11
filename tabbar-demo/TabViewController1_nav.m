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
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.navigationController.navigationBar.translucent = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
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
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
