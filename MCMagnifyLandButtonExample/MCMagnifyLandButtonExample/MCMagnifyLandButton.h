//
//  MCMagnifyLandButton.h
//  MCMagnifyLandButtonExample
//
//  Created by marco chen on 2017/1/5.
//  Copyright © 2017年 marco chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCMagnifyLandButton : UIButton
- (void)addRight:(CGFloat)width;
- (void)addLeft:(CGFloat)width;
- (void)addUp:(CGFloat)width;
- (void)addDown:(CGFloat)width;
- (void)multiLand:(NSInteger)multi;
@end
