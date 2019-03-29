//
//  NSObject+dealloc.m
//  Notification优化
//
//  Created by liangweidong on 2019/3/29.
//  Copyright © 2019 liangweidong. All rights reserved.
//

#import "NSObject+dealloc.h"
#import <objc/runtime.h>

static char notiRomoveKey;

@implementation NSObject (dealloc)

+(void)load
{
    Method oldMethod = class_getInstanceMethod([self class], NSSelectorFromString(@"dealloc"));
    Method newMethod = class_getInstanceMethod([self class], @selector(swizzledDealloc));
    method_exchangeImplementations(oldMethod, newMethod);
}

-(void)swizzledDealloc
{
    if (self.notiRomove == 5868)
    {//证明需要删除
        [[NSNotificationCenter defaultCenter] removeObserver:self];
    }
    [self swizzledDealloc];
}
#pragma mark setter getter
-(void)setNotiRomove:(int)notiRomove
{
    objc_setAssociatedObject(self, &notiRomoveKey, @(notiRomove), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(int)notiRomove
{
    return [objc_getAssociatedObject(self, &notiRomoveKey) intValue];
}
@end
