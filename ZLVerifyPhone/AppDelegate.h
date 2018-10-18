//
//  AppDelegate.h
//  ZLVerifyPhone
//
//  Created by apple on 2018/10/17.
//  Copyright © 2018年 ZL.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

