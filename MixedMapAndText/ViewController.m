//
//  ViewController.m
//  MixedMapAndText
//
//  Created by 唐云川 on 2018/6/27.
//  Copyright © 2018年 唐云川. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

// 目标 我[爱你]
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //attachment,附件
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = [UIImage imageNamed:@"compose_emoticonbutton_background_highlighted"];
    //lineHeight大小大致和字体大小基本一致
    CGFloat height = self.label.font.lineHeight;
    attachment.bounds = CGRectMake(0, -4, height, height);
    /**
     面试题：请说出frame和bounds的区别吧
        frame：x,y决定当前控件，相对于父视图控件的位置
        bounds：x,y决定内部子控件相对于原点的位置
     */
    //图像字符串
    NSAttributedString *attr = [NSAttributedString attributedStringWithAttachment:attachment];
    //定义可变字符串
    NSMutableAttributedString *mattrStr = [[NSMutableAttributedString alloc] initWithString:@"我"];
    //拼接图片文本
    [mattrStr appendAttributedString:attr];
    [mattrStr appendAttributedString:[[NSAttributedString alloc] initWithString:@"88!"]];
    //设置属性文本
    self.label.attributedText = mattrStr;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
