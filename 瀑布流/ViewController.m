//
//  ViewController.m
//  瀑布流
//
//  Created by zero on 2017/11/10.
//  Copyright © 2017年 zero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic,strong)UICollectionView *collectionView;

@end

@implementation ViewController
-(UICollectionView*)collectionView
{
    if (!_collectionView) {
        UICollectionViewFlowLayout *fl = [[UICollectionViewFlowLayout alloc]init];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-300, self.view.frame.size.width, 300) collectionViewLayout:fl];
    }
    return _collectionView;
}
#pragma delegate
#pragma datasource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 30;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [ collectionView dequeueReusableCellWithReuseIdentifier:@"str" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.collectionView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
