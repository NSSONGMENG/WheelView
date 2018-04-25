//
//  ViewController.m
//  WheelViewDemo
//
//  Created by Seven on 2018/4/25.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "ViewController.h"
#import "IXWheelV.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    IXWheelV    * wheelV = [[IXWheelV alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 200)];
//    wheelV.items = @[@"00.jpg",@"01.jpg",@"02.jpg",@"03.jpg"];
    wheelV.items = @[
                     @"https://tieba.baidu.com/photo/p?kw=组图&tid=2360018211&pic_id=51d5502c11dfa9ecb48b22af63d0f703908fc1e3",
                     @"https://tieba.baidu.com/photo/p?kw=组图&tid=2360018211&pic_id=58f4b5119313b07eb12224b00dd7912396dd8cf5",
                     @"https://tieba.baidu.com/photo/p?kw=组图&tid=2360018211&pic_id=9348221f95cad1c86922889f7e3e6709c83d51f7",
                     @"https://tieba.baidu.com/photo/p?kw=组图&tid=2360018211&pic_id=d88f99510fb30f24be0198bbc995d143ac4b03f1"
                     ];
    [self.view addSubview:wheelV];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
