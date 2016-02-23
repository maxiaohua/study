//
//  ViewController.m
//  20160223-按钮的基本使用优化
//
//  Created by mazhi'hua on 16/2/23.
//  Copyright © 2016年 mazhi'hua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *Icon;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)bigOrSmall:(UIButton *)sender {
    CGRect frameTemp = self.Icon.frame;
    switch (sender.tag) {
        case 100:
            frameTemp.size.width += 20;
            frameTemp.size.height += 20;
            break;
            
        case 200:
            frameTemp.size.width -= 20;
            frameTemp.size.height -= 20;
            break;
  
        default:
            break;
    }
    
    //设置button变大变小
    self.Icon.frame = frameTemp;
    
}
- (IBAction)buttonClick:(UIButton *)sender {
    CGPoint IconCenter = self.Icon.center;
    switch (sender.tag) {
        case 10:
            IconCenter.y += 50;
            break;
            
        case 20:
            IconCenter.x += 50;
            break;
            
        case 30:
            
            IconCenter.y -= 50;
            break;

        case 40:
            IconCenter.x -= 50;
            break;
            
        default:
            break;
    }
    //为button添加动画效果
    //开始动画
    [UIView beginAnimations:nil context:nil];
    //设置动画时长
    [UIView setAnimationDuration:3.0f];
    
    //移动button
    self.Icon.center = IconCenter;
    
    //结束动画/提交动画
    [UIView commitAnimations];
    
}

@end
