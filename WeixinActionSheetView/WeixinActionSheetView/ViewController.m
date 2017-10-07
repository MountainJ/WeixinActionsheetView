//
//  ViewController.m
//  WeixinActionSheetView
//
//  Created by Jayzy on 2017/10/7.
//  Copyright © 2017年 MountainJay. All rights reserved.
//

#import "ViewController.h"
#import "KKActionSheetView.h"

@interface ViewController ()<KKActionSheetViewDelegate>

@property (nonatomic,strong) UIButton *showBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.showBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.showBtn setTitle:@"弹窗" forState:UIControlStateNormal];
    self.showBtn.frame = CGRectMake(100, 300, 80, 40);
    [self.view addSubview:self.showBtn];
    self.showBtn.backgroundColor = [UIColor lightGrayColor];
    [self.showBtn addTarget:self action:@selector(actionRight) forControlEvents:UIControlEventTouchUpInside];
}

- (void)actionRight
{
    
    KKActionSheetView *sheetView = [[KKActionSheetView alloc] initWithTitle:@"" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"test1",@"激test2",@"下单记录",@"收寄地址",nil];
    [sheetView showInView:self.view];
}

- (void)actionSheet:(KKActionSheetView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%ld",buttonIndex);
    if (buttonIndex == 0) {//兑换
    } else  if (buttonIndex == 1) {//激活码兑换
    }else  if (buttonIndex == 2) {//购买记录
    }
    else  if (buttonIndex == 3) {//下单地址
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
