//
//  ViewController.m
//  FuseModule
//
//  Created by 胡冬冬 on 2022/1/20.
//

#import "ViewController.h"
#import <CTMediator+UserInfo.h>

@interface ViewController ()
@property (nonatomic, strong) UIButton *perInfoBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.perInfoBtn];
    
}
-(UIButton *)perInfoBtn{
    if (!_perInfoBtn) {
        _perInfoBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 40)];
        [_perInfoBtn setTitle:@"个人详情" forState:UIControlStateNormal];
        [_perInfoBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_perInfoBtn setBackgroundColor:[UIColor greenColor]];
        [_perInfoBtn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _perInfoBtn;
}
-(void)btnClicked{
    UIViewController * vc = [[CTMediator sharedInstance] loginViewController:@"name" age:12];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
