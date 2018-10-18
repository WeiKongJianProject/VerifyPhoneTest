//
//  ViewController.m
//  ZLVerifyPhone
//
//  Created by apple on 2018/10/17.
//  Copyright © 2018年 ZL.com. All rights reserved.
//

#import "ViewController.h"
#import "PhoneViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}
- (IBAction)buttonAction:(UIButton *)sender {
    PhoneViewController * viewController = [PhoneViewController new];
    [self.navigationController pushViewController:viewController animated:YES];
}


@end
