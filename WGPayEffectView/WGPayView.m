//
//  WGPayView.m
//  Jiayou
//
//  Created by 赵宁 on 2019/1/21.
//  Copyright © 2019 赵宁. All rights reserved.
//

#import "WGPayView.h"
#import <Masonry/Masonry.h>

@interface WGPayView ()

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UIButton *aliPay;
@property (weak, nonatomic) IBOutlet UIButton *wechatPay;
@property (weak, nonatomic) IBOutlet UIView *payView;

@property (nonatomic,copy) void (^block)(NSInteger selectIndex);

@end

@implementation WGPayView

+ (void)showPayView:(NSString *)title Price:(CGFloat)price Block:(void(^)(NSInteger selectIndex))block {
    WGPayView *view = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] firstObject];
    
    view.block = block;
    view.title.text = title;
    view.price.text = [NSString stringWithFormat:@"￥%.2f",price];
    view.payView.alpha = 0;
    UIView *superView = [[[UIApplication sharedApplication] windows] lastObject];
    [superView addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(superView);
    }];
    
    [UIView animateWithDuration:0.3 animations:^{
        view.payView.alpha = 1;
        [view.payView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(view);
        }];
        [view layoutIfNeeded];
    }];
}

#pragma mark --- Actions

- (IBAction)dismiss:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha = 0;
        [self.payView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self).offset((self.bounds.size.height+self.payView.bounds.size.height)/2);
        }];
        [self layoutIfNeeded];
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (IBAction)selecAction:(UIButton *)sender {
    self.aliPay.selected = sender==self.aliPay;
    self.wechatPay.selected = !self.aliPay.selected;
}

- (IBAction)confirmAction:(id)sender {
    if (self.block) self.block(self.wechatPay.selected);
    [self dismiss:nil];
}


@end
