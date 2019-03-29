//
//  NSNotificationCenter+Observer.m
//  Notification优化
//
//  Created by liangweidong on 2019/3/29.
//  Copyright © 2019 liangweidong. All rights reserved.
//

#import "NSNotificationCenter+Observer.h"
#import <objc/runtime.h>
#import "NSObject+dealloc.h"

@implementation NSNotificationCenter (Observer)

+(void)load
{
    Method oldMethod22 = class_getInstanceMethod([self class], NSSelectorFromString(@"addObserver:selector:name:object:"));
    Method newMethod22 = class_getInstanceMethod([self class], @selector(lwd_addObserver:selector:name:object:));
    method_exchangeImplementations(oldMethod22, newMethod22);
}

-(void)lwd_addObserver:(nonnull id)observer selector:(nonnull SEL)aSelector name:(nullable NSNotificationName)aName object:(nullable id)anObject
{
    NSObject *object = (NSObject *)observer;
    object.notiRomove = 5868;
    NSLog(@"lwd_addObserver====%@", NSStringFromClass(self.class));
    
}

@end
