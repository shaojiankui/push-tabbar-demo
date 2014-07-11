//
//  ViewController2.m
//  tabbar-demo
//
//  Created by Jakey on 14-6-17.
//  Copyright (c) 2014年 Jakey. All rights reserved.
//

#import "TabViewController2.h"
#import "AppDelegate.h"
@interface TabViewController2 ()

@end

@implementation TabViewController2

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
    self.title = @"ViewController2";

    if ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f)) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
        self.extendedLayoutIncludesOpaqueBars = NO;
        self.navigationController.navigationBar.translucent = NO;
        self.modalPresentationCapturesStatusBarAppearance = NO;
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // 显示外部的NavigationBar, 不显示内部的NavigationBar
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    appDelegate.navigationController.navigationBarHidden = NO;
    appDelegate.navigationController.visibleViewController.title = @"SecondTabBar";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
    return YES;
}
@end
