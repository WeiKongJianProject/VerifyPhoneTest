//
//  ZLPhoneVertifyUtil.h
//  ZLVerifyPhone
//
//  Created by apple on 2018/10/17.
//  Copyright © 2018年 ZL.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZLPhoneVertifyUtil : NSObject

/**
 *==========ZL注释start===========
 *1.手机号码验证 单例初始化方法
 *
 ===========ZL注释end==========*/
+ (ZLPhoneVertifyUtil *)shareInstance;


/**
 开始执行认证方法

 @param phoneNumber 传入手机号
 */

/**
  开始执行认证方法

 @param phoneNumber 传入手机号
 @param completeBlock 返回：字典形式，
 * resultCode：编码
 * 6666-成功，4444-失败，1111-无SIM卡，2222-无网络，3333-其他异常，
 * accessCode：预取的编码，
 @param failure 错误回调
 */
- (void)startVertifyActionWithPhoneNumber:(NSString *)phoneNumber complete:(void (^)(NSDictionary *_Nonnull resultDic)) completeBlock fail:(void (^)(BOOL result))failure;


@end

NS_ASSUME_NONNULL_END
