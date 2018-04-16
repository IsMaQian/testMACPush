//
//  ViewController.m
//  demo
//
//  Created by EdwardSelf on 2018/3/19.
//  Copyright © 2018年 NanJingA.YDrone. All rights reserved.
//

#import "ViewController.h"
#import "Helper.h"
#import "BViewController.h"

@interface ViewController ()<BVCModifyNameDelegate>
@property (nonatomic) NSInteger age;
@property (nonatomic) NSUInteger count;

@property (weak, nonatomic) IBOutlet UIButton *button;

@property (nonatomic) Helper *help1;
@end

@implementation ViewController

#pragma mark - BVCModifyName Delegate

- (void)nameDidChange:(NSString *)name{
    NSLog(@"name: %@", name);
    [self.button setTitle:name forState:UIControlStateNormal];
}

#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.age = 9;
//    self.name = @"22";
//    Helper *helper = [[Helper alloc] init];
//
//    [helper subBigNumber:10 smallNumber:5];
//    [Helper addNumber:5];
//    NSLog(@"%ld  %lu", self.age, self.count);
    
//    BViewController *vc = [BViewController new];
    
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    BViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"BViewController"];
//    segue.destinationViewController
//    vc.delegate = self;
    
    if([segue.identifier isEqualToString:@"GoToB"]) //"passValueToView2"是SEGUE连线的标识
    {
        
        BViewController *vc = segue.destinationViewController;
        
        vc.delegate = self;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (Helper *)help1{
    if (_help1 == nil) {
        _help1 = [[Helper alloc] init];
    }
    return _help1;
}

@end
