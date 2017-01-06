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
- (void)addRight:(CGFloat)width;
- (void)addLeft:(CGFloat)width;
- (void)addUp:(CGFloat)width;
- (void)addDown:(CGFloat)width;
- (void)moveRight:(CGFloat)width;
- (void)moveLeft:(CGFloat)width;
- (void)moveUp:(CGFloat)width;
- (void)moveDown:(CGFloat)width;
- (void)multiLand:(NSInteger)multi;
@end
