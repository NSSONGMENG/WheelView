//
//  ViewController.m
//  WheelViewDemo
//
//  Created by Seven on 2018/4/25.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "ViewController.h"
#import "IXWheelV.h"
#import "BVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
//    IXWheelV    * wheelV = [[IXWheelV alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 200)];
//    wheelV.items = @[@"00.jpg",@"01.jpg",@"02.jpg",@"03.jpg"];
//    [self.view addSubview:wheelV];
//
//    __weak  typeof(self) weakS = self;
//    wheelV.selectBlk = ^(NSInteger idx) {
//        NSLog(@"选中item索引 ： %ld",idx);
//        [weakS.navigationController pushViewController:[BVC new] animated:YES];
//    };

    UIButton    * btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)btnAction
{
    [self.navigationController pushViewController:[BVC new] animated:YES];
}

@end
