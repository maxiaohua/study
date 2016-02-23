//
//  ViewController.m
//  20160223-QQ登陆界面
//
//  Created by mazhi'hua on 16/2/23.
//  Copyright © 2016年 mazhi'hua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *QQ;
@property (weak, nonatomic) IBOutlet UITextField *Password;

@end

@implementation ViewController
- (IBAction)LoginButtonClick:(UIButton *)sender {
    NSLog(@"QQ = %@,密码 = %@",self.QQ.text,self.Password.text);
    //退出键盘
    [self.view endEditing:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
