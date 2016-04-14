//
//  LScMainTabBarController.m
//  banTangCopy
//
//  Created by LarrySue on 16/4/14.
//  Copyright © 2016年 LarrySue. All rights reserved.
//

#import "LScMainTabBarController.h"

@interface LScMainTabBarController ()

@end

@implementation LScMainTabBarController

#pragma mark - 工厂方法

+ (instancetype)mainTabBarController
{
    return [[self alloc] init];
}
- (instancetype)init
{
    if (self = [super init]) {
        [self setupChildViewControllers];
    }
    return self;
}

#pragma mark - 其他方法

- (void) setupChildViewControllers
{
    [self addChildViewController:[[UIViewController alloc] init] itemIconName:@"Home_normal"];
    [self addChildViewController:[[UIViewController alloc] init] itemIconName:@"Square_normal"];
    [self addChildViewController:[[UIViewController alloc] init] itemIconName:@"Show_normal"];
    [self addChildViewController:[[UIViewController alloc] init] itemIconName:@"Message_normal"];
    [self addChildViewController:[[UIViewController alloc] init] itemIconName:@"Personal_unlogin_normal"];
}
- (void)addChildViewController:(UIViewController *)childController itemIconName:(NSString *) itemIconName
{
    //设置子控制器在tabBar的图标
    childController.tabBarItem.image = [UIImage imageNamed:itemIconName];
    //用navVc包装后添加至tabBarVc
    [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:childController]];
}

@end
