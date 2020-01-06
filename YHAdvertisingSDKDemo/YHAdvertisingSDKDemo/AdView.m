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

    if(!CGRectEqualToRect(frame,CGRectZero)){


    }
}

-(BOOL)checkExploreWithTargetView:(UIView*)targetView{
    //隐藏 透明度==0 size==0 则认为没有曝光
    if(self.hidden||self.alpha<=0||CGSizeEqualToSize(targetView.frame.size, CGSizeZero)){
        return false;
    }

    return  false;
}

-(NSArray *)borderPointWithTargetView:(UIView*)targetView{
    NSMutableArray *pointsArray = [[NSMutableArray alloc] initWithCapacity:13];
    return [pointsArray copy];//todo 打点
}


- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"-----%s",__func__);
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        NSLog(@"-----%s",__func__);
    }
    return self;
}

- (void)removeFromSuperview {
    NSLog(@"-----%s",__func__);
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    NSLog(@"--------%s",__func__);
}

- (void)didMoveToSuperview {
    NSLog(@"--------%s",__func__);
}

- (void)willMoveToWindow:(UIWindow *)newWindow {
    NSLog(@"--------%s",__func__);
}

- (void)didMoveToWindow {
    NSLog(@"--------%s",__func__);
}

- (void)willRemoveSubview:(UIView *)subview {
    NSLog(@"--------%s",__func__);
}

- (void)didAddSubview:(UIView *)subview {
    NSLog(@"--------%s",__func__);
}

- (void)layoutSubviews {
    NSLog(@"--------%s",__func__);
}
@end
