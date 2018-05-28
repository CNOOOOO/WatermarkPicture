//
//  ViewController.m
//  水印图片
//
//  Created by Mac1 on 2018/5/25.
//  Copyright © 2018年 Mac1. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WaterImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //注意：水印依据的是图片的frame,所以要根据图片本身大小进行水印设值
    UIImageView *baseImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 300)];
    baseImageView.contentMode = UIViewContentModeScaleAspectFit;
    NSDictionary* attribute =@{NSFontAttributeName:[UIFont boldSystemFontOfSize:70],NSForegroundColorAttributeName:[UIColor whiteColor]};
    UIImage *image = [UIImageView WaterImageWithImage:[UIImage imageNamed:@"base"] text:@"QQ音乐" textPoint:CGPointMake(1300, 800) attributedString:attribute];
    image = [UIImageView WaterImageWithImage:image waterImage:[UIImage imageNamed:@"music"] waterImageRect:CGRectMake(1350, 600, 5*128*375/1500, 5*128*375/1500)];
    baseImageView.image = image;
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    [self.view addSubview:baseImageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
