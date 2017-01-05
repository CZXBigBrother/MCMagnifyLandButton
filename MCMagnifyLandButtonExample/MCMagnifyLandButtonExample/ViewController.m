//
//  ViewController.m
//  MCMagnifyLandButtonExample
//
//  Created by marco chen on 2017/1/5.
//  Copyright © 2017年 marco chen. All rights reserved.
//

#import "ViewController.h"
#import "MCMagnifyLandButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MCMagnifyLandButton * clickBtn = [[MCMagnifyLandButton alloc]init];
    clickBtn.frame = (CGRect){CGPointZero, {100, 100}};
    clickBtn.center = (CGPoint){self.view.frame.size.width/2,self.view.frame.size.height/2};
    clickBtn.backgroundColor = [UIColor greenColor];
    [clickBtn addTarget:self action:@selector(buttonOnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickBtn];
    [clickBtn setTitle:@"我是一个button" forState:UIControlStateNormal];
    clickBtn.titleLabel.font = [UIFont systemFontOfSize:11];
    //    [clickBtn multiLand:1];
    [clickBtn addDown:100];
    
    UIButton * clickBtnR = [[UIButton alloc]init];
    clickBtnR.frame = (CGRect){CGPointZero, {100, 100}};
    clickBtnR.center = (CGPoint){self.view.frame.size.width/2 + 100,self.view.frame.size.height/2};
    clickBtnR.backgroundColor = [UIColor redColor];
    clickBtnR.userInteractionEnabled = NO;
    [self.view addSubview:clickBtnR];
    
    UIButton * clickBtnL = [[UIButton alloc]init];
    clickBtnL.frame = (CGRect){CGPointZero, {100, 100}};
    clickBtnL.center = (CGPoint){self.view.frame.size.width/2 - 100,self.view.frame.size.height/2};
    clickBtnL.backgroundColor = [UIColor grayColor];
    clickBtnL.userInteractionEnabled = NO;
    [self.view addSubview:clickBtnL];
    
    UIButton * clickBtnU = [[UIButton alloc]init];
    clickBtnU.frame = (CGRect){CGPointZero, {100, 100}};
    clickBtnU.center = (CGPoint){self.view.frame.size.width/2,self.view.frame.size.height/2-100};
    clickBtnU.backgroundColor = [UIColor purpleColor];
    clickBtnU.userInteractionEnabled = NO;
    [self.view addSubview:clickBtnU];
    
    UIButton * clickBtnD = [[UIButton alloc]init];
    clickBtnD.frame = (CGRect){CGPointZero, {100, 100}};
    clickBtnD.center = (CGPoint){self.view.frame.size.width/2,self.view.frame.size.height/2 + 100};
    clickBtnD.backgroundColor = [UIColor blueColor];
    clickBtnD.userInteractionEnabled = NO;
    [self.view addSubview:clickBtnD];
}
- (void)buttonOnClick:(UIButton *)sender {
    NSLog(@"buttonOnClick");
}



@end
