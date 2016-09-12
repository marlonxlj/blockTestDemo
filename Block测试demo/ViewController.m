//
//  ViewController.m
//  Block测试demo
//
//  Created by m on 16/9/12.
//  Copyright © 2016年 XLJ. All rights reserved.
//

#import "ViewController.h"
#import "nameTest.h"

@interface ViewController ()

@property (nonatomic, strong) nameTest *test;

@end

@implementation ViewController

- (nameTest *)test
{
    if (!_test) {
        _test = [nameTest new];
    }
    
    return _test;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)resoultTest:(id)sender {
    
    
    self.test.handlerBlock(@"我是一个人的世界");
    
}
//需要测试
- (IBAction)secondTest:(id)sender {
    
    [self.test printClassNameHandler:^NSString *(NSString *one) {
        

        return one;
        
    }];
    
}

//第一种基本测试
- (IBAction)startTest:(id)sender {
    
    nameTest *test = [nameTest new];
    
    [test testXLJBlock:^int(int a, int b) {
        
        return a+b;
        
    }];


    NSLog(@"----%d",test.block(3,5));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
