//
//  BViewController.h
//  demo
//
//  Created by EdwardSelf on 2018/3/19.
//  Copyright © 2018年 NanJingA.YDrone. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BVCModifyNameDelegate <NSObject>

- (void)nameDidChange:(NSString *)name;

@end

@interface BViewController : UIViewController

@property (nonatomic) id<BVCModifyNameDelegate> delegate;

@end
