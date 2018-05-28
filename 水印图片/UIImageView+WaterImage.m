//
//  UIImageView+WaterImage.m
//  水印图片
//
//  Created by Mac1 on 2018/5/25.
//  Copyright © 2018年 Mac1. All rights reserved.
//

#import "UIImageView+WaterImage.h"

@implementation UIImageView (WaterImage)

+ (UIImage *_Nonnull)WaterImageWithImage:(UIImage *_Nonnull)image waterImage:(nullable UIImage *)waterImage waterImageRect:(CGRect)rect {
    //1.获取图片
    //2.开启上下文
    UIGraphicsBeginImageContextWithOptions(image.size, NO, [UIScreen mainScreen].scale);
    //3.绘制背景图片
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    //绘制水印图片到当前上下文
    [waterImage drawInRect:rect];
    //4.从上下文中获取新图片
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    //5.关闭图形上下文
    UIGraphicsEndImageContext();
    //保存图片至相册
//    UIImageWriteToSavedPhotosAlbum(newImage, nil, nil, nil);
    //返回图片
    return newImage;
}

+ (UIImage *_Nonnull)WaterImageWithImage:(UIImage *_Nonnull)image text:(nullable NSString *)text textPoint:(CGPoint)point attributedString:(nullable NSDictionary<NSString *,id> *)attributed {
    //1.开启上下文
    UIGraphicsBeginImageContextWithOptions(image.size, NO, [UIScreen mainScreen].scale);
    //2.绘制图片
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    //添加水印文字
    [text drawAtPoint:point withAttributes:attributed];
    //3.从上下文中获取新图片
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    //4.关闭图形上下文
    UIGraphicsEndImageContext();
    //保存图片至相册
//    UIImageWriteToSavedPhotosAlbum(newImage, nil, nil, nil);
    //返回图片
    return newImage;
}

@end
