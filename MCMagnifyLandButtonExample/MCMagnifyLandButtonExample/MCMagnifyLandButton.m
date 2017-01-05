//
//  MCMagnifyLandButton.m
//  MCMagnifyLandButtonExample
//
//  Created by marco chen on 2017/1/5.
//  Copyright © 2017年 marco chen. All rights reserved.
//

#import "MCMagnifyLandButton.h"

@interface MCMagnifyLandButton()
@property(assign, nonatomic) CGFloat boundX;
@property(assign, nonatomic) CGFloat boundY;
@property(assign, nonatomic) CGFloat boundW;
@property(assign, nonatomic) CGFloat boundH;

@property(assign, nonatomic) CGFloat boundDW;
@property(assign, nonatomic) CGFloat boundDH;
@end

@implementation MCMagnifyLandButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    //通过修改bounds 的x,y 值就可以只向X 轴或者Y轴的某一个方向扩展
    
    //当bounds 的X 为负,Y 为0,就只向X的正方向扩展点击区域,反之亦然
    
    //当bounds 的Y 为负,X 为0,就只向Y的正方向扩展点击区域,反之亦然
    
    //当bounds 的Y 为0,X 为0,widthDelta,heightDelta来控制扩大的点击区域 ,这个是同时向X 轴正负方向或者同时向Y轴的正负方向
    
    CGRect bounds = CGRectMake(0 + self.boundX, 0 + self.boundY, self.bounds.size.width + self.boundW, self.bounds.size.height + self.boundH);
    
    //90 是希望的X 轴或者Y轴方向的点击区域的宽度或者高度
    
    
    bounds = CGRectInset(bounds, -self.boundDW, -self.boundDH);//注意这里是负数，扩大了之前的bounds的范围
    
    return CGRectContainsPoint(bounds, point);
}
- (void)clear {
    self.boundX = 0;
    self.boundY = 0;
    self.boundW = 0;
    self.boundH = 0;
    self.boundDW = 0;
    self.boundDH = 0;
}
- (void)addRight:(CGFloat)width {
    self.boundW = width;
}
- (void)addLeft:(CGFloat)width {
    self.boundX = -width;
    self.boundW = width;
}
- (void)addUp:(CGFloat)width {
    self.boundY = - width;
    self.boundH = width;
}
- (void)addDown:(CGFloat)width {
    self.boundH = width;
}
- (void)multiLand:(NSInteger)multi {
    NSAssert(multi != 0, @"multi can not be zero");
    self.boundDW = self.bounds.size.width * multi/2;
    self.boundDH = self.bounds.size.height * multi/2;
}

@end
