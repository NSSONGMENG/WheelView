# WheelView
ios 轮播图
=====================

实现原理
---------------------

基础控件是UICollectionView和UIPageControl，通过timer控制其滚动
在有手势试图影响其自动滚动时，则暂停timer，待collection view因手势而滚动停止时启动timer，timeSpace秒后开始滚动。
为了解决timeSpace内受到手势的影响timer依然如期执行，使用了NSInvocationOperation来做控制。

由于在写此轮播图时未对点击事件进行处理，因此大家可以添加一个block，来抛出点击事件，使之被处理。


使用方法
----------------------
<pre><code>
- (FXWheellV *)wheelV
{
if (!_wheelV) {
_wheelV = [[FXWheellV alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 84)];
_wheelV.items = @[@"wheel_img0",@"wheel_img0",@"wheel_img0",@"wheel_img0",@"wheel_img0"];
}
return _wheelV;
}
</code></pre>

