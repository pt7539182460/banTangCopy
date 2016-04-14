/*!
 @header Constant.h
 @brief 全局常量声明
 @author LarrySue
 @version 1.00 _time_ Creation
 Copyright © 2016年/04/14 LarrySue. All rights reserved.
 */
#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

/*!
 *  @brief 传入scene，得到指定菜单数据的工具类
 */
@interface BTChNetWorkToolHelper : AFHTTPSessionManager

/*!
*  @brief 网络请求单例
*
*  @param scene 与主页scrollorView菜单对应
*
*  @return 字典数据
*/
+ (instancetype)sharedNetworkToolWithScene:(NSInteger*)scene;

/*!
 *  @brief 与主页scrollorView菜单对应
 */
@property (nonatomic, assign) NSInteger scene;

@end
