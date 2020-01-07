//
//  AdView.m
//  YHAdvertisingSDKDemo
//
//  Created by yanghe on 2020/1/6.
//  Copyright © 2020 yanghe. All rights reserved.
//

#import "AdView.h"

@implementation AdView

//启动检测程序
- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];

    if (!CGRectEqualToRect(frame, CGRectZero)) {


    }
}

- (BOOL)checkExploreWithTargetView:(UIView *)targetView {
    //隐藏 透明度==0 size==0 则认为没有曝光
    if (self.hidden || self.alpha <= 0 || CGSizeEqualToSize(targetView.frame.size, CGSizeZero)) {
        return false;
    }

    return false;
}


//中 上 下 左 右 左上 右上 左下 右下 左上中 右上中 左下中 右下中
- (NSArray *)borderPointWithTargetView:(UIView *)targetView {
    NSMutableArray *pointsArray = [[NSMutableArray alloc] initWithCapacity:13];
    CGFloat width = CGRectGetWidth(targetView.frame);
    CGFloat height = CGRectGetHeight(targetView.frame);
    CGFloat maxX = CGRectGetMaxX(targetView.frame);
    CGFloat maxY = CGRectGetMaxY(targetView.frame);
    CGFloat minX = CGRectGetMinX(targetView.frame);
    CGFloat minY = CGRectGetMinY(targetView.frame);
    //中
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX + width / 2, minY + height / 2) targetView:targetView]];
    //上
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX + width / 2, minY) targetView:targetView]];
    //下
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX + width / 2, maxY) targetView:targetView]];
    //左
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX, minY + height / 2) targetView:targetView]];
    //右
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(maxX, minY + height / 2) targetView:targetView]];
    //左上
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX, minY) targetView:targetView]];
    //右上
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(maxX, minY) targetView:targetView]];
    //左下
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX, maxY) targetView:targetView]];
    //右下
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(maxX, maxY) targetView:targetView]];
    //左上中
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX + width / 4, minY + height / 4) targetView:targetView]];
    //右上中
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX + width / 3, minY + height / 4) targetView:targetView]];
    //左下中
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX + width / 1, minY + height / 3) targetView:targetView]];
    //右下中
    [pointsArray addObject:[self convertToKeyWindow:CGPointMake(minX + width / 3, minY + height / 3) targetView:targetView]];
    return pointsArray;
}

- (NSValue *)convertToKeyWindow:(CGPoint)point targetView:(UIView *)targetView {
    CGPoint tempPoint = [targetView convertPoint:point toView:[UIApplication sharedApplication].keyWindow];
    NSValue *resultValue = [NSValue valueWithCGPoint:tempPoint];
    return resultValue;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"-----%s", __func__);
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"-----%s", __func__);
    }
    return self;
}

- (void)removeFromSuperview {
    NSLog(@"-----%s", __func__);
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    NSLog(@"--------%s", __func__);
}

- (void)didMoveToSuperview {
    NSLog(@"--------%s", __func__);
}

- (void)willMoveToWindow:(UIWindow *)newWindow {
    NSLog(@"--------%s", __func__);
}

- (void)didMoveToWindow {
    NSLog(@"--------%s", __func__);
}

- (void)willRemoveSubview:(UIView *)subview {
    NSLog(@"--------%s", __func__);
}

- (void)didAddSubview:(UIView *)subview {
    NSLog(@"--------%s", __func__);
}

- (void)layoutSubviews {
    NSLog(@"--------%s", __func__);
}
@end
