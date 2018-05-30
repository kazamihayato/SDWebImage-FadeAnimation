# 前言
想必大部分的iOS开发加载图片一般都用的是SDWebImage，但是图片在download完之后的显示方式十分苍白。这边我给加载完图片加了个渐进渐出的动画。（现在大部分做的好一点的APP都有这样的效果）。

------
## 18.5.29更新
原来的写法是修改了SDWebImage的源码，这样的方式从本质上来说违反了软件开发的原则，而且每次pod install之后需要重新添加，非常麻烦。于是最近在新项目里使用的时候，改变了之前的方法。单独将效果提取出来新增了两个分类。

下面直接上代码：
引入"UIImageView+SDCategory.h"
以UIImageView为例（UIButton也是同样的效果）
```
-(void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options progress:(SDWebImageDownloaderProgressBlock)progressBlock completed:(SDWebImageCompletionBlock)completedBlock
{
__weak __typeof(self)wself = self;
[self sd_setImageWithURL:url placeholderImage:placeholder options:options progress:progressBlock completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
if (image) {
CATransition *animation = [CATransition animation];
[animation setDuration:0.65f];
[animation setType:kCATransitionFade];
animation.removedOnCompletion = YES;
[wself.layer addAnimation:animation forKey:@"transition"];
}
if (completedBlock) {
completedBlock(image, error, cacheType, url);
}
}];
[self.layer removeAnimationForKey:@"transition"];
} 
```
**那么来分析一下代码：**
1.这边我在自己建的category里调用了SD加载图片的方法；
2.在completed的block的返回值中判断image是否存在（这里解释下为什么要这么判断，因为image为nil的话，表示图片在缓存以及网络请求之后都没有获取到）；
3.在判断Image存在之后，给self.layer（即当前的UIImageView添加了一个动画效果）；
4.最后在block的外部移除动画，保证cell复用不会重复；

**注意，不要给当前的UIImageView对象定义其他名为@"transition"的动画，会导致复用出错**

以下是效果的动态图
![testGif.gif](http://upload-images.jianshu.io/upload_images/2153139-c996317407c65271.gif?imageMogr2/auto-orient/strip)

使用的文件在Class文件夹里，
希望对进来看的朋友有所帮助，如果觉得有用的可以给个Star，谢谢~
