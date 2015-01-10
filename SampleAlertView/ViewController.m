//
//  ViewController.m
//  SampleAlertView
//
//  Created by Eriko Ichinohe on 2015/01/09.
//  Copyright (c) 2015年 Eriko Ichinohe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    //AlertViewの設定
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"今日アクティビティ行きますか？" message:@"行きます？" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    
    //設定したAlertViewを表示
    [alert show];
    
}

//ボタンがクリックされた時に、どのボタンが押されたか識別できるメソッド
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

    if (buttonIndex == 1) {
        NSLog(@"OK");
    }else{
        NSLog(@"Cancel");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
