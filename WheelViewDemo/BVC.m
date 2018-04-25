//
//  BVC.m
//  WheelViewDemo
//
//  Created by Seven on 2018/4/25.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "BVC.h"
#import "IXWheelV.h"

@interface BVC ()
@property (nonatomic, strong) IXWheelV  * wheelV;
@end

@implementation BVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    _wheelV = [[IXWheelV alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 200)];
    _wheelV.items = @[@"00.jpg",@"01.jpg",@"02.jpg",@"03.jpg"];
    [self.view addSubview:_wheelV];
    
    _wheelV.selectBlk = ^(NSInteger idx) {
        NSLog(@"BVC 选中item索引 ： %ld",idx);
    };
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [_wheelV stop];
}

- (void)dealloc
{
    NSLog(@" -- %s --",__func__);
}

@end
