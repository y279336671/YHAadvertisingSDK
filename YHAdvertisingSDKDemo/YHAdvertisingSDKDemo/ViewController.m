//
//  ViewController.m
//  YHAdvertisingSDKDemo
//
//  Created by yanghe on 2020/1/6.
//  Copyright © 2020 yanghe. All rights reserved.
//

#import "ViewController.h"
#import "AdView.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong)UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];


    NSArray *array = @[@59,@4,@235,@39,@1123];
    for (int i = 0; i < array.count; ++i) {
        
    }
    
//    AdView *adView = [AdView new];



//    [self.view addSubview:adView];

//    [adView setFrame:CGRectMake(0, 0, 100, 100)];
    // Do any additional setup after loading the view.
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }

    AdView *adView = [AdView new];
    adView.tag = 1;
    [cell addSubview:adView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{

    UIView *view =  [cell viewWithTag:1];
    NSLog(@"%@",view);
//    CGPoint tempPoint = [view convertPoint:CGPointMake(0, 0) toView:[UIApplication sharedApplication].keyWindow];
////    NSLog(@"%@",tempPoint);
}

-(UITableView *)tableView{
    if(!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}
@end
