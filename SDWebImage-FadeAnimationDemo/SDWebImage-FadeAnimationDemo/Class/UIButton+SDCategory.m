//
//  UIButton+SDCategory.m
//  SDWebImage-FadeAnimationDemo
//
//  Created by 庄BB的MacBook on 2018/5/29.
//  Copyright © 2018年 JiJi. All rights reserved.
//

#import "UIButton+SDCategory.h"
#import "UIButton+WebCache.h"

@implementation UIButton (SDCategory)

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state
{
    [self sd_setFadeImageWithURL:url forState:state placeholderImage:nil options:0 completed:nil];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder
{
    [self sd_setFadeImageWithURL:url forState:state placeholderImage:placeholder options:0 completed:nil];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options
{
    [self sd_setFadeImageWithURL:url forState:state placeholderImage:placeholder options:options completed:nil];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state completed:(SDWebImageCompletionBlock)completedBlock
{
     [self sd_setFadeImageWithURL:url forState:state placeholderImage:nil options:0 completed:completedBlock];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder completed:(SDWebImageCompletionBlock)completedBlock
{
    [self sd_setFadeImageWithURL:url forState:state placeholderImage:placeholder options:0 completed:completedBlock];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock
{
    __weak __typeof(self)wself = self;
    [self sd_setImageWithURL:url forState:state placeholderImage:placeholder options:options completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        __strong UIButton *sself = wself;
        if (image) {
            CATransition *animation = [CATransition animation];
            [animation setDuration:0.65f];
            [animation setType:kCATransitionFade];
            animation.removedOnCompletion = YES;
            [sself.layer addAnimation:animation forKey:@"transition"];
        }
        if (completedBlock) {
            completedBlock(image, error, cacheType, url);
        }
    }];
    [self.layer removeAnimationForKey:@"transition"];
}

//******Background******//

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state
{
    [self sd_setFadeBackgroundImageWithURL:url forState:state placeholderImage:nil options:0 completed:nil];
}

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder
{
    [self sd_setFadeBackgroundImageWithURL:url forState:state placeholderImage:placeholder options:0 completed:nil];
}

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options
{
    [self sd_setFadeBackgroundImageWithURL:url forState:state placeholderImage:placeholder options:options completed:nil];
}

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state completed:(SDWebImageCompletionBlock)completedBlock
{
    [self sd_setFadeBackgroundImageWithURL:url forState:state placeholderImage:nil options:0 completed:completedBlock];
}

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder completed:(SDWebImageCompletionBlock)completedBlock
{
    [self sd_setFadeBackgroundImageWithURL:url forState:state placeholderImage:placeholder options:0 completed:completedBlock];
}


- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock
{
    __weak __typeof(self)wself = self;
    [self sd_setBackgroundImageWithURL:url forState:state placeholderImage:placeholder options:options completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        __strong UIButton *sself = wself;
        if (image) {
            CATransition *animation = [CATransition animation];
            [animation setDuration:0.65f];
            [animation setType:kCATransitionFade];
            animation.removedOnCompletion = YES;
            [sself.layer addAnimation:animation forKey:@"transition"];
        }
        if (completedBlock) {
            completedBlock(image, error, cacheType, url);
        }
    }];
    [self.layer removeAnimationForKey:@"transition"];
}
@end
