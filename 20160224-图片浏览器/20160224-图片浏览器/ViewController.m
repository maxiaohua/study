//
//  ViewController.m
//  20160224-图片浏览器
//
//  Created by mazhi'hua on 16/2/24.
//  Copyright © 2016年 mazhi'hua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//序号
@property (weak, nonatomic) IBOutlet UILabel *noLabel;
//图片
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
//描述文字
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
//左边按钮
@property (weak, nonatomic) IBOutlet UIButton *preBtn;
//右边按钮
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;

//右边按钮的点击事件
- (IBAction)nextButtonClick:(UIButton *)sender;
//左边按钮的点击事件
- (IBAction)preButtonClick:(UIButton *)sender;

//记录当前所在的页码
@property(nonatomic,assign) int index;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.index = 0;
    [self nextButtonClick:self.nextBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//点击下一个按钮
- (IBAction)nextButtonClick:(UIButton *)sender {
    //序号，图片，描述都要改变
    //1 当前页码+1
    self.index += 1;
    //2 序号，图片，描述
    switch (self.index) {
        case 1:
            self.noLabel.text = @"1/5";
            self.iconView.image = [UIImage imageNamed:@"biaoqingdi"];
            self.descLabel.text = @"在他面前，其他神马表情都弱爆了！";
            break;
            
        case 2:
            self.noLabel.text = @"2/5";
            self.iconView.image = [UIImage imageNamed:@"bingli"];
            self.descLabel.text = @"这也忒狠了";
            break;

        case 3:
            self.noLabel.text = @"3/5";
            self.iconView.image = [UIImage imageNamed:@"chiniupa"];
            self.descLabel.text = @"这小姑娘吃个牛排比杀牛还费劲啊";
            break;

        case 4:
            self.noLabel.text = @"4/5";
            self.iconView.image = [UIImage imageNamed:@"danteng"];
            self.descLabel.text = @"亲，你能改下你的网名么？哈哈";
            break;

        case 5:
            self.noLabel.text = @"5/5";
            self.iconView.image = [UIImage imageNamed:@"wangba"];
            self.descLabel.text = @"哥们为什么选八号呢";
            break;

            
        default:
            break;
    }
    
//    if (self.index == 5) {
//        self.nextBtn.enabled = NO ;
//    }else {
//        self.nextBtn.enabled = YES;
//    }
    
    self.nextBtn.enabled = (self.index == 5) ? NO : YES;
    
//    if (self.index == 1) {
//        self.preBtn.enabled = NO ;
//    }else {
//        self.preBtn.enabled = YES;
//    }
    self.preBtn.enabled = (self.index == 1) ? NO : YES;
    
}

- (IBAction)preButtonClick:(UIButton *)sender {
    //序号，图片，描述都要改变
    //1 当前页码-1
    self.index -= 1;
    //2 序号，图片，描述
    switch (self.index) {
        case 1:
            self.noLabel.text = @"1/5";
            self.iconView.image = [UIImage imageNamed:@"biaoqingdi"];
            self.descLabel.text = @"在他面前，其他神马表情都弱爆了！";
            break;
            
        case 2:
            self.noLabel.text = @"2/5";
            self.iconView.image = [UIImage imageNamed:@"bingli"];
            self.descLabel.text = @"这也忒狠了";
            break;
            
        case 3:
            self.noLabel.text = @"3/5";
            self.iconView.image = [UIImage imageNamed:@"chiniupa"];
            self.descLabel.text = @"这小姑娘吃个牛排比杀牛还费劲啊";
            break;
            
        case 4:
            self.noLabel.text = @"4/5";
            self.iconView.image = [UIImage imageNamed:@"danteng"];
            self.descLabel.text = @"亲，你能改下你的网名么？哈哈";
            break;
            
        case 5:
            self.noLabel.text = @"5/5";
            self.iconView.image = [UIImage imageNamed:@"wangba"];
            self.descLabel.text = @"哥们为什么选八号呢";
            break;
            
            
        default:
            break;
    }
    
//    if (self.index == 1) {
//        self.preBtn.enabled = NO ;
//    }else {
//        self.preBtn.enabled = YES;
//    }
//    
//    if (self.index == 5) {
//        self.nextBtn.enabled = NO ;
//    }else {
//        self.nextBtn.enabled = YES;
//    }

//    self.preBtn.enabled = (self.index == 1)? NO : YES;
    self.preBtn.enabled = (self.index != 1);
//    self.nextBtn.enabled = (self.index == 5)? NO : YES;
    self.nextBtn.enabled = (self.index != 5);
}
@end
