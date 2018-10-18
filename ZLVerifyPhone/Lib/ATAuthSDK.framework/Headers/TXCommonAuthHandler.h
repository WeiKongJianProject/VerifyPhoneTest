//
//  TXCommonAuthHandler.h
//  ATAuthSDK
//
//  Created by yangli on 15/03/2018.
//  Copyright © 2018 alicom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TXCommonAuthHandler : NSObject

/*
 * 函数名：getVersion
 * 参数：无
 * 返回：字符串，sdk版本号
 */
+ (NSString *_Nonnull)getVersion;

/*
 * 函数名：checkGatewayVerifyEnable
 * 参数：无
 * 返回：BOOL值，YES表示网关认证所需的数据网络已开启，NO表示未开启
 */
+ (BOOL)checkGatewayVerifyEnable;

/*
 * 函数名：getAccessCode
 * 参数：vendorArray：供应商信息列表
 * 返回：字典形式，resultCode：编码，6666-成功，4444-失败，1111-无SIM卡，2222-无网络，3333-其他异常，accessCode：预取的编码，msg：文案或错误提示
 */

+ (void)getAccessCode:(NSArray *_Nullable)vendorArray complete:(void (^_Nullable)(NSDictionary * _Nonnull resultDic))complete;

@end
