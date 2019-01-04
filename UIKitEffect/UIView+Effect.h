//
//  UIView+Effect.h
//  Test
//
//  Created by 赵宁 on 2018/12/22.
//  Copyright © 2018 赵宁. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Effect)

@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable BOOL fill;

@end

NS_ASSUME_NONNULL_END
