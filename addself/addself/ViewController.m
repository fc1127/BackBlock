//
//  ViewController.m
//  addself
//
//  Created by 方超 on 16/11/11.
//  Copyright © 2016年 FC. All rights reserved.
//

#import "ViewController.h"
#import "backViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary * dic=@{@"name":@"xiaoming"};
    backViewController * back=[[backViewController alloc]initWithUrl:@"www.baidu.com" dic:dic];
    NSLog(@"%@",back.responsdObject);
}
//单例
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSDictionary * dic=@{@"name":@"xiaoming"};
    [[backViewController requestData]request:@"www.baidu.com" parmars:dic SBlock:^(id respondObject) {
        NSLog(@"%@",respondObject);
    } FBlock:^(NSError *errorMessage) {
        
    }];
}

@end
