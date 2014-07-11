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

    
    UINavigationController *tab1Nav = [[UINavigationController alloc] init];
    [tab1Nav pushViewController:vc1 animated:NO];
    
    
    self.viewControllers = @[tab1Nav,vc2];
    [self setTitle:@"title"];
    self.delegate = self;
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.navigationController.navigationBar.translucent = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;

}



-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
  
    self.title =viewController.title;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
