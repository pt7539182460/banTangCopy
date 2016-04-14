//
//  BTChNetWorkToolHelper.h
//  BTCNetWorkTools
//
//  Created by 米易雅克 on 16/4/6.
//  Copyright © 2016年 米易雅克. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
@interface BTChNetWorkToolHelper : AFHTTPSessionManager

+ (instancetype)sharedNetworkToolWithScene:(NSInteger*)scene;
@property (nonatomic, assign) NSInteger scene;
@end
