//
//  SubView.m
//  DemoAppObjC
//
//  Created by CTPLMac7 on 08/12/17.
//  Copyright © 2017 CTPLMac7. All rights reserved.
//

#import "SubView.h"

@implementation SubView


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        UIPanGestureRecognizer * pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
        pan.maximumNumberOfTouches = pan.minimumNumberOfTouches = 1;
        [self addGestureRecognizer:pan];
        
        
    }
    return self;
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
