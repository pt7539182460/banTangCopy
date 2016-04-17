//
//  BTCmSingle.h
//  BT
//
//  Created by 曾宇 on 16/4/7.
//  Copyright © 2016年 qiongYou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BTCmSingle : NSObject

@property (nonatomic, copy) NSString *icon;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *numSingle;


+(NSArray*)singles;

@end
