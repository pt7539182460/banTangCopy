//
//  BTCvSingleCell.m
//  BT
//
//  Created by 曾宇 on 16/4/7.
//  Copyright © 2016年 qiongYou. All rights reserved.
//

#import "BTCvSingleCell.h"

@interface BTCvSingleCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *describe;

@end

@implementation BTCvSingleCell

-(void)setSingle:(BTCmSingle *)single{
    _single = single;
    
    self.iconView.image = nil;
    
    self.titleLabel.text=single.title;
    
    self.describe.text=single.numSingle;
    
    
}

@end
