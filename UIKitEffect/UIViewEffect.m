//
//  UIViewEffect.m
//  Test
//
//  Created by 赵宁 on 2019/1/4.
//  Copyright © 2019 赵宁. All rights reserved.
//

#import "UIViewEffect.h"

@implementation UIViewEffect

- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:(self.bottomLeftRadius?UIRectCornerBottomLeft:0)|(self.bottomRightRadius?UIRectCornerBottomRight:0)|(self.topLeftRadius?UIRectCornerTopLeft:0)|(self.topRightRadius?UIRectCornerTopRight:0) cornerRadii:CGSizeMake(self.cornerRadius, 0.f)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = self.bounds;
    //设置图形样子
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
    // 设置线条宽度
    maskPath.lineWidth = self.borderWidth;
    // 设置线条颜色
    [self.borderColor setStroke];
    // 绘制线条
    [maskPath stroke];
    
    if (self.fill) {
        // 如果是实心圆，设置填充颜色
        [self.borderColor setFill];
        // 填充圆形
        [maskPath fill];
    }
}


@end
