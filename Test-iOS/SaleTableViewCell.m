//
//  SaleTableViewCell.m
//  Test-iOS
//
//  Created by Bhavin Ahir on 2017-07-13.
//  Copyright © 2017 Bhavin Ahir. All rights reserved.
//

#import "SaleTableViewCell.h"

@implementation SaleTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _saleLabel.layer.cornerRadius = 8;
    _saleLabel.clipsToBounds = YES;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
