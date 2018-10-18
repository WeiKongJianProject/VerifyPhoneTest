//
//  PhoneViewController.m
//  ZLVerifyPhone
//
//  Created by apple on 2018/10/17.
//  Copyright © 2018年 ZL.com. All rights reserved.
//

#import "PhoneViewController.h"

@interface PhoneViewController ()

@end

@implementation PhoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)vertifyButtonAction:(UIButton *)sender {
    
    [[ZLPhoneVertifyUtil shareInstance] startVertifyActionWithPhoneNumber:@"" complete:^(NSDictionary * _Nonnull resultDic) {
        
    } fail:^(BOOL result) {
        UIAlertAction *alert = [UIAlertAction actionWithTitle:@"网关认证失败" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        UIAlertController *alertVC = [[UIAlertController alloc]init];
        [alertVC addAction:alert];
        [self presentViewController:alertVC animated:YES completion:nil];
    }];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
