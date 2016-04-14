//
//  AppDelegate.m
//  banTangCopy
//
//  Created by 苏俊良 on 16/3/28.
//  Copyright © 2016年 LarrySue. All rights reserved.
//

#import "AppDelegate.h"

#import "LScMainTabBarController.h"

@interface AppDelegate ()

@property (nonatomic, strong) LScMainTabBarController *tabBarVc;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //创建tableBarViewController
    self.tabBarVc = [LScMainTabBarController mainTabBarController];
    
    //设置tabBarVc为window的根控制器
    self.window.rootViewController = self.tabBarVc;
        //创建子控制器
        UIViewController *vc = [[UIViewController alloc] init];
        vc.view.backgroundColor = BTCColorRandom;
        //包装于导航控制器内
        UINavigationController *navVc = [[UINavigationController alloc] initWithRootViewController:vc];
        //添加至tabBar控制器
        [self.tabBarVc addChildViewController:navVc];
    
    //设置window为主窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
