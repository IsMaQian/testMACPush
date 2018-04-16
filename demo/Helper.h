//
//  Helper.h
//  demo
//
//  Created by EdwardSelf on 2018/3/19.
//  Copyright © 2018年 NanJingA.YDrone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Helper : NSObject

@property (nonatomic) NSString *title;

- (NSInteger)add;

- (NSInteger)subBigNumber:(NSInteger)bigNumber smallNumber:(NSInteger)smallNumber;

+ (NSInteger)addNumber:(NSInteger)number;

@property (nonatomic) NSInteger score;
@end
