//
//  UIImageView+WaterImage.h
//  水印图片
//
//  Created by Mac1 on 2018/5/25.
//  Copyright © 2018年 Mac1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (WaterImage)

//水印图片
+ (UIImage *_Nonnull)WaterImageWithImage:(UIImage *_Nonnull)image waterImage:(nullable UIImage *)waterImage waterImageRect:(CGRect)rect;
//水印文字
+ (UIImage *_Nonnull)WaterImageWithImage:(UIImage *_Nonnull)image text:(nullable NSString *)text textPoint:(CGPoint)point attributedString:(nullable NSDictionary<NSString *,id> *)attributed;

@end
