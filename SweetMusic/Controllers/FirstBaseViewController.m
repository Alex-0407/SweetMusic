//
//  FirstBaseViewController.m
//  SweetMusic
//
//  Created by 董兴斌 on 15/11/15.
//  Copyright © 2016年 董兴斌. All rights reserved.
//

#import "FirstBaseViewController.h"
#import "AppDelegate.h"

@interface FirstBaseViewController ()

@end

@implementation FirstBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self navigationItemSetting];
}

- (void)navigationItemSetting{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed: @"iconfont-wode"] style:UIBarButtonItemStyleDone target:self action:@selector(leftClicked:)];
}

- (void)leftClicked:(UIBarButtonItem *)item{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if (appDelegate.leftSlideVC.closed) {
        [appDelegate.leftSlideVC openLeftView];
    }else{
        [appDelegate.leftSlideVC closeLeftView];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
