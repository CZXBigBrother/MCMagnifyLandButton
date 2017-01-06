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
/*
 *  清空
 */
- (void)clear;
/*
 *  拓展右边空间
 */
- (void)increaseRight:(CGFloat)width;
/*
 *  拓展左边空间
 */
- (void)increaseLeft:(CGFloat)width;
/*
 *  拓展上层空间
 */
- (void)increaseUp:(CGFloat)width;
/*
 *  拓展下层空间
 */
- (void)increaseDown:(CGFloat)width;
/*
 *  向右移动
 */
- (void)moveRight:(CGFloat)width;
/*
 *  向左移动
 */
- (void)moveLeft:(CGFloat)width;
/*
 *  向上移动
 */
- (void)moveUp:(CGFloat)width;
/*
 *  向下移动
 */
- (void)moveDown:(CGFloat)width;
/*
 *  原始大小翻倍,不包括拓展空间(不能为0)
 */
- (void)multiLand:(NSInteger)multi;
@end
