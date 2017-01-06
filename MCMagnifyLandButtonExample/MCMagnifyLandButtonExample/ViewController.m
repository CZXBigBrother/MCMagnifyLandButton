//
//  ViewController.m
//  MCMagnifyLandButtonExample
//
//  Created by marco chen on 2017/1/5.
//  Copyright © 2017年 marco chen. All rights reserved.
//

#import "ViewController.h"
#import "MCMagnifyLandButton.h"

#define widthS (50)

@interface ViewController ()
@property (weak, nonatomic) UIView *showView;
@property (weak, nonatomic) MCMagnifyLandButton *landButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MCMagnifyLandButton * clickBtn = [[MCMagnifyLandButton alloc]init];
    clickBtn.frame = (CGRect){CGPointZero, {widthS, widthS}};
    clickBtn.center = (CGPoint){self.view.frame.size.width/2,self.view.frame.size.height/2};
    clickBtn.backgroundColor = [UIColor greenColor];
    [clickBtn addTarget:self action:@selector(buttonOnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickBtn];
    [clickBtn setTitle:@"button" forState:UIControlStateNormal];
    clickBtn.titleLabel.font = [UIFont systemFontOfSize:11];
    clickBtn.alpha = 0.5;
    self.landButton = clickBtn;
    
    UIView * land = [[UIView alloc]init];
    land.frame = clickBtn.frame;
    land.layer.borderColor = [UIColor redColor].CGColor;
    land.layer.borderWidth = 2;
    self.showView = land;
    land.userInteractionEnabled = NO;
    [self.view addSubview:land];

}
- (IBAction)addButton:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
            [self.landButton increaseUp:widthS];
            break;
        case 1:
            [self.landButton increaseDown:widthS];
            break;
        case 2:
            [self.landButton increaseLeft:widthS];
            break;
        case 3:
            [self.landButton increaseRight:widthS];
            break;
        default:
            break;
    }
    [self freshShow];
}
- (IBAction)moveButton:(UIButton *)sender {
//    switch (sender.tag) {
//        case 0:
//            [self.landButton reduceUp:widthS];
//            break;
//        case 1:
//            [self.landButton reduceDown:widthS];
//            break;
//        case 2:
//            [self.landButton reduceLeft:widthS];
//            break;
//        case 3:
//            [self.landButton reduceRight:widthS];
//            break;
//        default:
//            break;
//    }
    switch (sender.tag) {
        case 0:
            [self.landButton moveUp:widthS];
            break;
        case 1:
            [self.landButton moveDown:widthS];
            break;
        case 2:
            [self.landButton moveLeft:widthS];
            break;
        case 3:
            [self.landButton moveRight:widthS];
            break;
        default:
            break;
    }
    [self freshShow];
}
- (IBAction)clear:(id)sender {
    [self.landButton clear];
    [self freshShow];
}

- (void)freshShow {
    self.showView.frame = [MCMagnifyLandButton showLand:self.landButton];
}
- (void)buttonOnClick:(UIButton *)sender {
    NSLog(@"buttonOnClick");
    UILabel * label = [[UILabel alloc]init];
    label.text = @"你点击到了";
    label.frame = (CGRect){CGPointZero,{100,100}};
    label.center = self.landButton.center;
    [self.view addSubview:label];
    [ViewController floatAway:label];
}
+ (void)floatAway:(UIView *)view{
    CGRect bounds = view.frame;
    [UIView animateWithDuration:0.6 animations:^{
        view.frame = CGRectMake(bounds.origin.x, bounds.origin.y-20, bounds.size.width, bounds.size.height);
        view.alpha = 0;
    } completion:^(BOOL finished) {
        [view removeFromSuperview];
    }];
}
@end
