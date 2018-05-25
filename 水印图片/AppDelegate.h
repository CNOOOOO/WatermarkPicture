//
//  AppDelegate.h
//  水印图片
//
//  Created by Mac1 on 2018/5/25.
//  Copyright © 2018年 Mac1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

