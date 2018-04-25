# iOS 轮播图
=====================

实现原理
---------------------

<p>
基础控件是UICollectionView和UIPageControl，通过timer控制其滚动。
</p>
<p>
在有手势试图影响其自动滚动时，则暂停timer，待collection view因手势而滚动停止时启动timer，timeSpace秒后开始滚动。
</p>
<p>
为了解决timeSpace内受到手势的影响timer依然如期执行，使用了NSInvocationOperation来做控制。
</p>



使用方法
----------------------
```Objective-C
IXWheelV    * wheelV = [[IXWheelV alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 200)];
wheelV.items = @[@"00.jpg",@"01.jpg",@"02.jpg",@"03.jpg"];
[self.view addSubview:wheelV];

wheelV.selectBlk = ^(NSInteger idx) {
    NSLog(@"选中item索引 ： %ld",idx);
};

//页面退出时终止timer，避免释放不掉
[_wheelV stop];
```

