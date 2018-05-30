//
//  UIImageView+SDCategory.h
//  SDWebImage-FadeAnimationDemo
//
//  Created by 庄BB的MacBook on 2018/5/29.
//  Copyright © 2018年 JiJi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDWebImageManager.h"

@interface UIImageView (SDCategory)
- (void)sd_setFadeImageWithURL:(NSURL *)url;

- (void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;

- (void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options;

- (void)sd_setFadeImageWithURL:(NSURL *)url completed:(SDWebImageCompletionBlock)completedBlock;

- (void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder completed:(SDWebImageCompletionBlock)completedBlock;

- (void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock;

- (void)sd_setFadeImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options progress:(SDWebImageDownloaderProgressBlock)progressBlock completed:(SDWebImageCompletionBlock)completedBlock;


@end
