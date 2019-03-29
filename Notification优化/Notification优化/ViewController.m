//
//  ViewController.m
//  Notification优化
//
//  Created by liangweidong on 2019/3/28.
//  Copyright © 2019 liangweidong. All rights reserved.
//

#import "ViewController.h"
#import "AAAVC.h"
#import "BBBVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *editButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [editButton setTitle:@"AAA" forState:UIControlStateNormal];
    [editButton addTarget:self action:@selector(onEdit:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *recordButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [recordButton setTitle:@"BBB" forState:UIControlStateNormal];
    [recordButton addTarget:self action:@selector(onRecord:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *joinButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [joinButton setTitle:@"CCC" forState:UIControlStateNormal];
    [joinButton addTarget:self action:@selector(onJoin:) forControlEvents:UIControlEventTouchUpInside];
    
    editButton.frame = CGRectMake(50, 50, 100, 50);
    
    recordButton.frame = CGRectMake(50, 150, 100, 50);
    
    joinButton.frame = CGRectMake(50, 250, 100, 50);
    
    for (UIButton *button in @[editButton, recordButton, joinButton]) {
        [self.view addSubview:button];
    }
}

-(void)onEdit:(UIButton *)sender
{
    AAAVC *vc = [[AAAVC alloc] init];
    [self presentViewController:vc animated:YES completion:^{}];
}

-(void)onRecord:(UIButton *)sender
{
    BBBVC *vc = [[BBBVC alloc] init];
    [self presentViewController:vc animated:YES completion:^{}];
}
-(void)onJoin:(UIButton *)sender
{
    
}
@end
