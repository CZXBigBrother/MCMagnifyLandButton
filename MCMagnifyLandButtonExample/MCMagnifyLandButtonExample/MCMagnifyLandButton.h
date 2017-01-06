//
//  MCMagnifyLandButton.h
//  MCMagnifyLandButtonExample
//
//  Created by marco chen on 2017/1/5.
//  Copyright © 2017年 marco chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCMagnifyLandButton : UIButton
@property(assign, nonatomic,readonly) CGFloat boundX;
@property(assign, nonatomic,readonly) CGFloat boundY;
@property(assign, nonatomic,readonly) CGFloat boundW;
@property(assign, nonatomic,readonly) CGFloat boundH;
@property(assign, nonatomic,readonly) CGFloat boundDW;
@property(assign, nonatomic,readonly) CGFloat boundDH;
- (void)clear;
- (void)increaseRight:(CGFloat)width;
- (void)increaseLeft:(CGFloat)width;
- (void)increaseUp:(CGFloat)width;
- (void)increaseDown:(CGFloat)width;
- (void)moveRight:(CGFloat)width;
- (void)moveLeft:(CGFloat)width;
- (void)moveUp:(CGFloat)width;
- (void)moveDown:(CGFloat)width;
- (void)multiLand:(NSInteger)multi;
@end
