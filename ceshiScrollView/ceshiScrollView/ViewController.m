//
//  ViewController.m
//  ceshiScrollView
//
//  Created by mazhi'hua on 16/3/2.
//  Copyright © 2016年 mazhi'hua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *S;
@property (weak, nonatomic) IBOutlet UIImageView *M;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.S.contentSize = self.M.frame.size;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
