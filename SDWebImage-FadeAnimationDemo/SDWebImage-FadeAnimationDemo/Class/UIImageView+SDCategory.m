//
//  UIImageView+SDCategory.m
//  SDWebImage-FadeAnimationDemo
//
//  Created by 庄BB的MacBook on 2018/5/29.
//  Copyright © 2018年 JiJi. All rights reserved.
//

#import "UIImageView+SDCategory.h"
#import "UIImageView+WebCache.h"


@implementation UIImageView (SDCategory)

-(void)sd_setFadeImageWithURL:(NSURL *)url
{
    [self sd_setFadeImageWithURL:url placeholderImage:nil options:0 progress:nil completed:nil];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder
{
     [self sd_setFadeImageWithURL:url placeholderImage:placeholder options:0 progress:nil completed:nil];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options
{
    [self sd_setFadeImageWithURL:url placeholderImage:placeholder options:options progress:nil completed:nil];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url completed:(SDWebImageCompletionBlock)completedBlock
{
     [self sd_setFadeImageWithURL:url placeholderImage:nil options:0 progress:nil completed:completedBlock];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder completed:(SDWebImageCompletionBlock)completedBlock
{
    [self sd_setFadeImageWithURL:url placeholderImage:placeholder options:0 progress:nil completed:completedBlock];
}

- (void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock
{
    [self sd_setFadeImageWithURL:url placeholderImage:placeholder options:options progress:nil completed:completedBlock];
}


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

@end
