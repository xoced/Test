//
//  ViewController.m
//  瀑布流
//
//  Created by zero on 2017/11/10.
//  Copyright © 2017年 zero. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()
@property (nonatomic,strong)UIButton *checkButton;
@end

@implementation ViewController
-(UIButton*)checkButton
{
    if (!_checkButton) {
        _checkButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_checkButton setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        _checkButton.frame = CGRectMake(100, 100, 100, 100);
        [_checkButton addTarget:self action:@selector(check:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _checkButton;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.checkButton];
}
-(void)check:(UIButton*)check
{
    FirstViewController *first = [[FirstViewController alloc]init];
    [self presentViewController:first animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
