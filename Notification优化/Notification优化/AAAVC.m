//
//  AAAVC.m
//  Notification优化
//
//  Created by liangweidong on 2019/3/29.
//  Copyright © 2019 liangweidong. All rights reserved.
//

#import "AAAVC.h"

@interface AAAVC ()

@end

@implementation AAAVC

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:^{}];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiMethod:) name:@"aaaaaaa" object:nil];
}

-(void)notiMethod:(NSNotification *)noti
{
    NSLog(@"通知来了兄弟");
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"aaaaaaa" object:nil];
}

@end
