//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by André Rodrigues on 10/27/13.
//  Copyright (c) 2013 Microsoft. All rights reserved.
//

// From: http://blog.austinlouden.com/post/47644627216/your-first-ios-app-100-programmatically

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     this creates the text field and sets the frame
     "CGRectMake" creates the frame with (x,y,width,height)
     where x and y are are pixel distances from the top left
     of the screen
     */
    self.textField = [[UITextField alloc]
                      initWithFrame:
                      CGRectMake(10.0f, 30.0f,
                                 300.0f, 30.0f)];
    self.textField.delegate = self;
    
    //changes the border style so the text field appears on screen
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    /*
     add the text field to the main view.
     Note: UITextField (along with a number of
     other UI classes are subclasses of
     UIView, which means they can be
     added onto the view hierarchy
     */
    [self.view addSubview:self.textField];
    
    //initialize the button with the default, rounded rect type
    UIButton *button =
    [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //set the button's frame
    button.frame = CGRectMake(110.0f, 200.0f, 100.0f, 30.0f);
    
    //set the target, action, and control event.
    //more about this in the paragraph below
    [button addTarget:self
               action:@selector(buttonPressed)
     forControlEvents:UIControlEventTouchUpInside];
    
    //set the title
    [button setTitle:@"Press Me!" forState:UIControlStateNormal];
    
    //add the button to the main view
    [self.view addSubview:button];
    
    self.label = [[UILabel alloc]
                  initWithFrame:CGRectMake(115.0f, 150.0f, 200.0f, 30.0f)];
    self.label.text = @"Hello World!";
    [self.view addSubview:self.label];
}

- (void)buttonPressed {
    self.label.text = self.textField.text;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //this tells the operating system to remove
    //the keyboard from the forefront
    [textField resignFirstResponder];
    
    //returns NO. Instead of adding a line break,
    //the text field resigns
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
