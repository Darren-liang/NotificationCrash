//
//  NSObject+dealloc.h
//  Notification优化
//
//  Created by liangweidong on 2019/3/29.
//  Copyright © 2019 liangweidong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (dealloc)

//标记那个对象需要删除 值为5868的是需要删除
@property(nonatomic, assign)int notiRomove;

@end

