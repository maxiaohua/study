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
    
    
    self.Icon.center = IconCenter;
}

@end
