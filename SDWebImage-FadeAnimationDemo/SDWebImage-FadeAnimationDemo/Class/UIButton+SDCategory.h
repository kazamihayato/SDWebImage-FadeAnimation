//
//  UIButton+SDCategory.h
//  SDWebImage-FadeAnimationDemo
//
//  Created by 庄BB的MacBook on 2018/5/29.
//  Copyright © 2018年 JiJi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDWebImageManager.h"

@interface UIButton (SDCategory)

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state;

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder;

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options;

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state completed:(SDWebImageCompletionBlock)completedBlock;

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder completed:(SDWebImageCompletionBlock)completedBlock;

- (void)sd_setFadeImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock;


- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state;

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder;

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options;

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state completed:(SDWebImageCompletionBlock)completedBlock;

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder completed:(SDWebImageCompletionBlock)completedBlock;

- (void)sd_setFadeBackgroundImageWithURL:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock;

@end
