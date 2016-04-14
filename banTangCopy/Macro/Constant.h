/*!
 @header Constant.h
 @brief 全局常量声明
 @author LarrySue
 @version 1.00 2016/03/28 Creation
 Copyright © 2016年 LarrySue. All rights reserved.
 */
 
#ifndef Constant_h
#define Constant_h

#import <UIKit/UIKit.h>

/*** 以下是一些范例 ***/

//枚举值的注释和命名范例
/*!
 *  @brief 枚举值的范例
 */
typedef NS_ENUM(NSUInteger, BTCkSex) {
    /*!
     *  男
     */
    BTCkSexFemale,
    /*!
     *  女
     */
    BTCkSexMale,
};

@class BTCcDemo;

//协议的注释和命名范例
/*!
 @brief 这是BTCcDemo类的一个protocol
 */
@protocol BTCpDemoDelegate <NSObject>

//代理方法的命名和注释范例
/*!
 @brief 这是一个代理方法
 @param demo 自身
 @param name 姓名
 */
- (void)demo:(BTCcDemo *)demo forMyName:(NSString *)name;

@end

//类的命名和注释范例
/*!
 *  @brief 这是一个类的范例
 */
@interface BTCmDemo : NSObject

//方法的命名和注释范例
/*!
 @brief 方法注释Demo
 @discussion 此方法用于示范如何添加标准文档注释 并未有具体实现 请勿调用 请勿重写
 @param num 参数
 @result 返回值
 */
- (NSInteger)demoMethod:(NSInteger)num;

@end

/*!
 @brief 这是一个全局宏范例
 */
UIKIT_EXTERN NSString *const BTCMacroDemo;

#endif /* Constant_h */
