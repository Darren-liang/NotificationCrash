//
//  BBBVC.m
//  Notification优化
//
//  Created by liangweidong on 2019/3/29.
//  Copyright © 2019 liangweidong. All rights reserved.
//

#import "BBBVC.h"

@interface BBBVC ()

@end

@implementation BBBVC
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:^{}];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *editButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [editButton setTitle:@"haha" forState:UIControlStateNormal];
    [editButton addTarget:self action:@selector(onEdit:) forControlEvents:UIControlEventTouchUpInside];
    
    editButton.frame = CGRectMake(50, 150, 100, 50);
    
    for (UIButton *button in @[editButton]) {
        [self.view addSubview:button];
    }
}

-(void)onEdit:(UIButton *)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"aaaaaaa" object:nil];
}

@end
