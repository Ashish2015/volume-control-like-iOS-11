//
//  ViewController.h
//  DemoAppObjC
//
//  Created by CTPLMac7 on 08/12/17.
//  Copyright © 2017 CTPLMac7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic , strong) IBOutlet UIView *viewContainer;
@property (nonatomic , strong) IBOutlet UIView *viewInner;

@end

