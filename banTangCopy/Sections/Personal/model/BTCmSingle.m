//
//  BTCmSingle.m
//  BT
//
//  Created by 曾宇 on 16/4/7.
//  Copyright © 2016年 qiongYou. All rights reserved.
//

#import "BTCmSingle.h"

@implementation BTCmSingle





+(NSArray*)singles{
    
//    NSMutableArray *arr=[[NSMutableArray alloc]init];
    BTCmSingle *single=[[self alloc]init];
    single.title=@"qqqq";
    single.numSingle=@"5";
    
    BTCmSingle *single2=[[self alloc]init];
    single2.title=@"wwww";
    single2.numSingle=@"6";
    
    NSArray *arr =[NSArray arrayWithObjects:single,single2, nil];
    
    return arr;
    
}





@end

















