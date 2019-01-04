//
//  UIView+Effect.m
//  Test
//
//  Created by 赵宁 on 2018/12/22.
//  Copyright © 2018 赵宁. All rights reserved.
//

#import "UIView+Effect.h"
#import <objc/runtime.h>

@implementation UIView (Effect)

/**
 *  设置边框宽度
 *
 *  @param borderWidth 可视化视图传入的值
 */
- (void)setBorderWidth:(CGFloat)borderWidth {

    if (borderWidth < 0) return;

    self.layer.borderWidth = borderWidth;
}

/**
 *  设置边框颜色
 *
 *  @param borderColor 可视化视图传入的值
 */
- (void)setBorderColor:(UIColor *)borderColor {

    self.layer.borderColor = borderColor.CGColor;
}

/**
 *  设置圆角
 *
 *  @param cornerRadius 可视化视图传入的值
 */
- (void)setCornerRadius:(CGFloat)cornerRadius {

    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = (cornerRadius > 0);
}

- (void)setFill:(BOOL)fill {
    objc_setAssociatedObject(self, @selector(fill), @(fill),OBJC_ASSOCIATION_ASSIGN);
}


@end
