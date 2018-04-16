//
//  BViewController.m
//  demo
//
//  Created by EdwardSelf on 2018/3/19.
//  Copyright © 2018年 NanJingA.YDrone. All rights reserved.
//

#import "BViewController.h"
#import "ViewController.h"


@interface BViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (nonatomic) UIBarButtonItem *leftNaviBtn;
@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    ViewController *vc = [ViewController new];
    [self leftNaviBtn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 方法 methods
- (void)popToFirstVC{
    NSLog(@"返回上一页");
//    if ([_delegate respondsToSelector:@selector(nameDidChange:)]) {
//    NSLog(@"delegate:%@", _delegate);
    [_delegate nameDidChange:self.textField.text];
//    NSLog(@"-- %@", self.textField.text);
//    }
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - lazy load
- (UIBarButtonItem *)leftNaviBtn{
    if (_leftNaviBtn == nil) {
        _leftNaviBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(popToFirstVC)];
        self.navigationItem.leftBarButtonItem = _leftNaviBtn;
    }
    return _leftNaviBtn;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
