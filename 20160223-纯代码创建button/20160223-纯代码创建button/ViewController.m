//
//  ViewController.m
//  20160223-纯代码创建button
//
//  Created by mazhi'hua on 16/2/23.
//  Copyright © 2016年 mazhi'hua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1 创建按钮
    // 设置大小
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    //设置背景图片
    [button setBackgroundColor:[UIColor redColor]];
    //将按钮添加到View上面
    [self.view addSubview:button];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
