//
//  ViewController1.m
//  tabbar-demo
//
//  Created by Jakey on 14-6-17.
//  Copyright (c) 2014年 Jakey. All rights reserved.
//

#import "TabViewController1.h"
#import "TabViewController1_nav.h"
#import "AppDelegate.h"
@interface TabViewController1 ()

@end

@implementation TabViewController1

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
    self.title = @"ViewController1";

    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.navigationController.navigationBar.translucent = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // 显示外部NavBar，隐藏内部NavBar
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    appDelegate.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden        = YES;
    
    // 头部Bar的标题
    appDelegate.navigationController.visibleViewController.title = @"FirstTabBar + FirstNav";
}



-(void)backButtonTouched{

}
-(void)selectRightAction{
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushTouched:(id)sender {
    TabViewController1_nav *view = [[TabViewController1_nav alloc]init];
    [self.navigationController pushViewController:view animated:YES];
}
@end
