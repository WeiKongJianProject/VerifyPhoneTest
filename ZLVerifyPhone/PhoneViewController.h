//
//  PhoneViewController.h
//  ZLVerifyPhone
//
//  Created by apple on 2018/10/17.
//  Copyright © 2018年 ZL.com. All rights reserved.
//

#import "ViewController.h"
#import "ZLPhoneVertifyUtil.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhoneViewController : ViewController

@property (strong, nonatomic) IBOutlet UITextField *phoneText;
@property (strong, nonatomic) IBOutlet UIButton *vertifyButton;

@end

NS_ASSUME_NONNULL_END
