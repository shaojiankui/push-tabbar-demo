//
//  TabViewController.m
//  tabbar-demo
//
//  Created by Jakey on 14-6-17.
//  Copyright (c) 2014年 Jakey. All rights reserved.
//

#import "TabViewController.h"
#import "TabViewController1.h"
#import "TabViewController2.h"
#import "AppDelegate.h"
@interface TabViewController ()

@end

@implementation TabViewController

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
   
    
    TabViewController1 *vc1 =[[TabViewController1 alloc]init];
    TabViewController2 *vc2 =[[TabViewController2 alloc]init];
    vc1.tabBarItem.title=@"One";
    vc2.tabBarItem.title=@"two";

    
    self.tabbar1Nav = [[UINavigationController alloc] init];
    [self.tabbar1Nav pushViewController:vc1 animated:NO];
    
    
    self.viewControllers = @[self.tabbar1Nav,vc2];
    [self setTitle:@"title"];
    self.delegate = self;
    
    if ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f)) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
        self.extendedLayoutIncludesOpaqueBars = NO;
        self.navigationController.navigationBar.translucent = NO;
        self.modalPresentationCapturesStatusBarAppearance = NO;
    }
    

}



-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    
    NSLog(@"appDelegate nav frame%@",NSStringFromCGRect(appDelegate.navigationController.view.frame));
    NSLog(@"appDelegate navigationBar frame%@",NSStringFromCGRect(appDelegate.navigationController.navigationBar.frame));

    NSLog(@"tabBar nav frame%@",NSStringFromCGRect(self.tabbar1Nav.view.frame));
    NSLog(@"tabBar navigationBar frame%@",NSStringFromCGRect(self.tabbar1Nav.navigationBar.frame));

    self.title =viewController.title;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
