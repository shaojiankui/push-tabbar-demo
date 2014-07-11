//
//  MainViewController.m
//  tabbar-demo
//
//  Created by Jakey on 14-6-17.
//  Copyright (c) 2014年 Jakey. All rights reserved.
//

#import "MainViewController.h"
#import "TabViewController.h"
#import "AppDelegate.h"
@interface MainViewController ()

@end

@implementation MainViewController

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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushTouched:(UIButton *)sender {
    
    TabViewController *tab = [[TabViewController alloc]init];
    [self.navigationController pushViewController:tab animated:YES];
    
}
@end
