//
//  ViewController.m
//  SDWebImage-FadeAnimationDemo
//
//  Created by 庄BB的MacBook on 2017/2/1.
//  Copyright © 2017年 JiJi. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+SDCategory.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *testImgv;
@property (weak, nonatomic) IBOutlet UIImageView *testImgv2;
@property (weak, nonatomic) IBOutlet UIButton *actionBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor lightGrayColor];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnAction:(UIButton *)sender {
    
    
    sender.selected=!sender.selected;
    if (sender.selected) {
        [_testImgv sd_setFadeImageWithURL:[NSURL URLWithString:@"http://img1.gtimg.com/sports/pics/hv1/182/87/2183/141971942.jpg"]];
        [_testImgv2 sd_setFadeImageWithURL:[NSURL URLWithString:@"http://img1.gtimg.com/sports/pics/hv1/143/88/2183/141972158.jpg"]];
    }
    else
    {
        _testImgv.image =nil;
        _testImgv2.image=nil;
        
        [[SDImageCache sharedImageCache]clearMemory];
        [[SDImageCache sharedImageCache]clearDisk];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
