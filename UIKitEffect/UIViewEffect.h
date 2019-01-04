//
//  UIViewEffect.h
//  Test
//
//  Created by 赵宁 on 2019/1/4.
//  Copyright © 2019 赵宁. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface UIViewEffect : UIView

@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (assign, nonatomic) IBInspectable BOOL topLeftRadius;
@property (assign, nonatomic) IBInspectable BOOL topRightRadius;
@property (assign, nonatomic) IBInspectable BOOL bottomLeftRadius;
@property (assign, nonatomic) IBInspectable BOOL bottomRightRadius;
@property (nonatomic, assign) IBInspectable BOOL fill;

@end

NS_ASSUME_NONNULL_END
