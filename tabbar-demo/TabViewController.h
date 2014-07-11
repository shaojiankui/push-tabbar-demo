//
//  TabViewController.h
//  tabbar-demo
//
//  Created by Jakey on 14-6-17.
//  Copyright (c) 2014年 Jakey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabViewController : UITabBarController<UITabBarControllerDelegate>
@property (strong, nonatomic) UINavigationController *tabbar1Nav;

@end
