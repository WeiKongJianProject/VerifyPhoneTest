//
//  TXCommonUtils.h
//  authsdk
//
//  Created by yangli on 12/03/2018.
//  Copyright © 2018 alicom. All rights reserved.
//

#import <Foundation/Foundation.h>

#define TX_Auth_Result_Success      @"6666"
#define TX_Auth_Result_Fail         @"4444"
#define TX_Auth_Result_No_SIM_Card  @"1111"
#define TX_Auth_Result_No_Network   @"2222"
#define TX_Auth_Result_Other_Err    @"3333"

@interface TXCommonUtils : NSObject

+ (BOOL)isChinaUnicom;
+ (BOOL)isChinaMobile;
+ (BOOL)isChinaTelecom;

+ (NSString *)getCurrentMobileNetworkName;
+ (NSString *)getCurrentCarrierkName;

+ (NSString *)getNetworktype;
+ (BOOL)simSupportedIsOK;

@end
