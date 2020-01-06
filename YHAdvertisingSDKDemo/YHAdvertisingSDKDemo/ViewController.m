//
//  ViewController.m
//  YHAdvertisingSDKDemo
//
//  Created by yanghe on 2020/1/6.
//  Copyright © 2020 yanghe. All rights reserved.
//

#import "ViewController.h"
#import "AdView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AdView *adView = [AdView new];
    [self.view addSubview:adView];

//    [adView setFrame:CGRectMake(0, 0, 100, 100)];
    // Do any additional setup after loading the view.
    
}


@end
