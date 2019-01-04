//
//  UIImageViewEffect.m
//  Test
//
//  Created by 赵宁 on 2019/1/4.
//  Copyright © 2019 赵宁. All rights reserved.
//

#import "UIImageViewEffect.h"

@implementation UIImageViewEffect

- (void)awakeFromNib {
    [super awakeFromNib];
    [self drawRect:self.bounds];
}

- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:(self.bottomLeftRadius?UIRectCornerBottomLeft:0)|(self.bottomRightRadius?UIRectCornerBottomRight:0)|(self.topLeftRadius?UIRectCornerTopLeft:0)|(self.topRightRadius?UIRectCornerTopRight:0) cornerRadii:CGSizeMake(self.cornerRadius, 0.f)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = self.bounds;
    //设置图形样子
    maskLayer.path  = maskPath.CGPath;
    self.layer.mask = maskLayer;
    UIGraphicsBeginImageContext(rect.size);
    // 绘制线条
    [maskPath stroke];
    UIGraphicsEndImageContext();
}

@end
