//
//  ZLPhoneVertifyUtil.m
//  ZLVerifyPhone
//
//  Created by apple on 2018/10/17.
//  Copyright © 2018年 ZL.com. All rights reserved.
//

#import "ZLPhoneVertifyUtil.h"
#import <ATAuthSDK/ATAuthSDK.h>

@implementation ZLPhoneVertifyUtil


/**
 单例实现

 @return 实例对象
 */
+ (ZLPhoneVertifyUtil *)shareInstance{
    static ZLPhoneVertifyUtil * instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[[self class] alloc] init];
    });
    return instance;
}


/**
 开始执行认证方法

 @param phoneNumber 传入手机号
 */
- (void)startVertifyActionWithPhoneNumber:(NSString *)phoneNumber complete:(void (^)(NSDictionary * _Nonnull))completeBlock fail:(void (^)(BOOL))failure{
    
    
    // 1. 首先判断环境是否支持
    if ([TXCommonAuthHandler checkGatewayVerifyEnable]) {
        // 2. 业务方调用业务服务端获取供应商信息接口，即会获取供应商信息列表vendorArray
        // 3. 获取预取号accessCode
        [TXCommonAuthHandler getAccessCode:@[@"中国电信",@"中国移动",@"中国联通"] complete:^(NSDictionary * _Nonnull resultDic) {
            NSLog(@"获取到的Dic值为:%@",resultDic);
            
            NSString *resultCode = [resultDic valueForKey:@"resultCode"];
            NSString *accessCode = [resultDic valueForKey:@"accessCode"];
            NSString *msg = [resultDic valueForKey:@"msg"];
            NSLog(@"获取到:resultCode=%@",resultCode);
            NSLog(@"accessCode=%@",accessCode);
            NSLog(@"msg=%@",msg);
            if (resultCode.length > 0 && [resultCode isEqualToString:@"6666"]  && accessCode.length > 0) {
                // 已取到accessCode，业务方调用业务服务器端认证接口
            }
            else {
                // 未取到accessCode，切换到业务方其他的认证模式
            }
             
        }];
    }
    else {
        // 业务方其他的认证模式
        NSLog(@"数据网络没有开启");
        failure(YES);
    }
    
}


-(void)post
{
    //1.创建会话对象
    NSURLSession *session = [NSURLSession sharedSession];
    
    //2.根据会话对象创建task
    NSURL *url = [NSURL URLWithString:@"http://120.25.226.186:32812/login"];
    
    //3.创建可变的请求对象
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    //4.修改请求方法为POST
    request.HTTPMethod = @"POST";
    
    //5.设置请求体
    //request.HTTPBody = [@"username=520it&pwd=520it&type=JSON" dataUsingEncoding:NSUTF8StringEncoding];
    
    //6.根据会话对象创建一个Task(发送请求）
    /*
     第一个参数：请求对象
     第二个参数：completionHandler回调（请求完成【成功|失败】的回调）
     data：响应体信息（期望的数据）
     response：响应头信息，主要是对服务器端的描述
     error：错误信息，如果请求失败，则error有值
     */
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        //8.解析数据
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        NSLog(@"%@",dict);
        
    }];
    
    //7.执行任务
    [dataTask resume];
}

@end
