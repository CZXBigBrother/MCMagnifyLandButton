//
//  MCMagnifyLandButton.m
//  MCMagnifyLandButtonExample
//
//  Created by marco chen on 2017/1/5.
//  Copyright © 2017年 marco chen. All rights reserved.
//

#import "MCMagnifyLandButton.h"

@interface MCMagnifyLandButton()

@end

@implementation MCMagnifyLandButton
- (void)setBoundX:(CGFloat)boundX {
    _boundX = boundX;
}
- (void)setBoundY:(CGFloat)boundY {
    _boundY = boundY;
}
- (void)setBoundW:(CGFloat)boundW {
    _boundW = boundW;
}
- (void)setBoundH:(CGFloat)boundH {
    _boundH = boundH;
}
- (void)setBoundDW:(CGFloat)boundDW {
    _boundDW = boundDW;
}
- (void)setBoundDH:(CGFloat)boundDH {
    _boundDH = boundDH;
}
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bounds = CGRectMake(0 + self.boundX, 0 + self.boundY, self.bounds.size.width + self.boundW, self.bounds.size.height + self.boundH);
    bounds = CGRectInset(bounds, -self.boundDW, -self.boundDH);
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
- (void)increaseRight:(CGFloat)width {
    self.boundW += width;
}
- (void)increaseLeft:(CGFloat)width {
    self.boundX += -width;
    self.boundW += width;
}
- (void)increaseUp:(CGFloat)width {
    self.boundY += - width;
    self.boundH += width;
}
- (void)increaseDown:(CGFloat)width {
    self.boundH += width;
}
- (void)multiLand:(NSInteger)multi {
    NSAssert(multi != 0, @"multi can not be zero");
    self.boundDW = self.bounds.size.width * multi/2;
    self.boundDH = self.bounds.size.height * multi/2;
}
- (void)moveRight:(CGFloat)width {
    self.boundX += width;
}
- (void)moveLeft:(CGFloat)width {
    self.boundX += -width;
}
- (void)moveUp:(CGFloat)width {
    self.boundY += -width;
}
- (void)moveDown:(CGFloat)width {
    self.boundY += width;
}

@end
