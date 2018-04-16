//
//  Helper.m
//  demo
//
//  Created by EdwardSelf on 2018/3/19.
//  Copyright © 2018年 NanJingA.YDrone. All rights reserved.
//

#import "Helper.h"

@implementation Helper

- (instancetype)init{
    if (self = [super init]) {
    
    }
    return self;
}

- (NSInteger)subBigNumber:(NSInteger)bigNumber smallNumber:(NSInteger)smallNumber{
    NSInteger count = 0;
    count = bigNumber - smallNumber;
    return count;
}

+ (NSInteger)addNumber:(NSInteger)number{
    NSInteger count = 0;
    count = 5 + number;
    return count;
}

- (void)setScore:(NSInteger)score{
    self.score = 10;
}

- (NSInteger)score{
    return 5;
}
@end
