//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by André Rodrigues on 10/27/13.
//  Copyright (c) 2013 Microsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *label;

@end