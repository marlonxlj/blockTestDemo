//
//  nameTest.h
//  Block测试demo
//
//  Created by m on 16/9/12.
//  Copyright © 2016年 XLJ. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSString * (^GetClassNameWithObject)(NSString *one);

typedef int(^XLJBlock)(int a, int b);


@interface nameTest : NSObject


@property (nonatomic, copy) GetClassNameWithObject handlerBlock;

@property (nonatomic, copy) XLJBlock block;

//需求测试
- (void)printClassNameHandler:(GetClassNameWithObject)handlerBlock;
//第一次测试
- (void)testXLJBlock:(XLJBlock)xljBlock;

@end
