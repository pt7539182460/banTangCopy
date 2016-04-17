//
//  BTCPersonalViewController.m
//  BT
//
//  Created by 曾宇 on 16/4/7.
//  Copyright © 2016年 qiongYou. All rights reserved.
//

#import "BTCPersonalViewController.h"
#import "BTCmSingle.h"
#import "BTCvSingleCell.h"


@interface BTCPersonalViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
/**
  账号信息
 */
//头像
@property (weak, nonatomic) IBOutlet UIImageView *headIcon;
//名字
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
//详细label
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

/**
collectionView
 */
@property (weak, nonatomic) IBOutlet UICollectionView *personalCollcationCiew;

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *personalLayout;

/**
 *  模型
 */
@property (nonatomic, strong) NSArray *singles;


@end
@implementation BTCPersonalViewController

-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    //layout初始化
    self.personalLayout.itemSize = CGSizeMake(160, 200);
    self.personalLayout.minimumLineSpacing=5;
    self.personalLayout.minimumInteritemSpacing=5;
    self.personalLayout.sectionInset=UIEdgeInsetsMake(0, 30, 0, 30);
//    self.personalLayout.estimatedItemSize = CGSizeMake(0, 300);
    
}


-(void)viewDidLoad{
    [super viewDidLoad];
    [self personalInit];
}

/**
 初始化 personalCollcationCiew
 */
-(void)personalInit{
    self.personalCollcationCiew.delegate=self;
    self.personalCollcationCiew.dataSource=self;
//    self.personalCollcationCiew.contentSize=CGSizeMake(0, 800);
}


#pragma mark -----collection的代理
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    static int a=0;
    NSLog(@"a==%d",a++);
    
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 1;//section==0? 0: self.singles.count;
    
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    BTCvSingleCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"personalCell" forIndexPath:indexPath];
    
    cell.single=self.singles[indexPath.item];
    
    return cell;
    
}

-(UICollectionReusableView*)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@",kind);
    if (kind == UICollectionElementKindSectionHeader) {
        UICollectionReusableView *headCell=[collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"personalhead" forIndexPath:indexPath];

        return headCell;
    }
    
    return nil;
}



#pragma mark -----懒加载
-(NSArray *)singles{
    if (_singles == nil) {
        _singles = [BTCmSingle singles];
    }
    return _singles;
}



@end





















