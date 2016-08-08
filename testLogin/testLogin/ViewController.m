//
//  ViewController.m
//  testLogin
//
//  Created by zhao on 8/8/16.
//  Copyright © 2016 zhao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (strong, nonatomic) UITextField * name;
@property (strong, nonatomic) UITextField * password;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor brownColor];
    _name = [[UITextField alloc] initWithFrame:CGRectMake(70, 70, 200, 40)];
    UIImageView *imageViewUserName= [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];//[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_password_pre.png"]];
    imageViewUserName.image = [UIImage imageNamed:@"icon_password_pre.png"];
    _name.leftView = imageViewUserName;
    _name.backgroundColor = [UIColor whiteColor];
    _name.alpha = 0.5;
    _name.borderStyle = UITextBorderStyleRoundedRect;
      _name.placeholder = @"password";
      _name.clearButtonMode = UITextFieldViewModeWhileEditing;
    _name.keyboardType = UIKeyboardTypeNumberPad;
    _name.leftViewMode = UITextFieldViewModeAlways;
    _name.delegate = self;
    [self.view addSubview:_name];
    
    
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    UIImageView *imageViewUserName= [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];//[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_password_pre.png"]];
    imageViewUserName.image = [UIImage imageNamed:@"icon_phone_pre.png"];
    _name.leftView = imageViewUserName;

    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    UIImageView *imageViewUserName= [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];//[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_password_pre.png"]];
    imageViewUserName.image = [UIImage imageNamed:@"icon_password_pre.png"];
    _name.leftView = imageViewUserName;
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
