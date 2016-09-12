//
//  nameTest.m
//  Block测试demo
//
//  Created by m on 16/9/12.
//  Copyright © 2016年 XLJ. All rights reserved.
//

#import "nameTest.h"

@implementation nameTest

- (void)printClassNameHandler:(GetClassNameWithObject)handlerBlock
{
    self.handlerBlock = handlerBlock;
}

- (void)testXLJBlock:(XLJBlock)xljBlock
{
    self.block = xljBlock;
}

@end
