//
//  ViewController.m
//  DemoAppObjC
//
//  Created by CTPLMac7 on 08/12/17.
//  Copyright © 2017 CTPLMac7. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _viewContainer.layer.cornerRadius = _viewContainer.frame.size.height/6;
    _viewContainer.layer.masksToBounds = true;

    UIPanGestureRecognizer * pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    pan.maximumNumberOfTouches = pan.minimumNumberOfTouches = 1;
    [self.viewContainer addGestureRecognizer:pan];
}

- (void)pan:(UIPanGestureRecognizer *)aPan; {
    
    CGPoint currentPoint = [aPan locationInView:self.viewContainer];
    
    [UIView animateWithDuration:0.01f
                     animations:^{
                         CGRect oldFrame = _viewInner.frame;
                             _viewInner.frame = CGRectMake(oldFrame.origin.x, currentPoint.y, oldFrame.size.width, (_viewContainer.frame.size.height -  currentPoint.y));
                     }];
}

@end
