//
//  UIImageViewEffect.h
//  Test
//
//  Created by 赵宁 on 2019/1/4.
//  Copyright © 2019 赵宁. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageViewEffect : UIImageView

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable BOOL topLeftRadius;
@property (nonatomic, assign) IBInspectable BOOL topRightRadius;
@property (nonatomic, assign) IBInspectable BOOL bottomLeftRadius;
@property (nonatomic, assign) IBInspectable BOOL bottomRightRadius;

@end

NS_ASSUME_NONNULL_END
