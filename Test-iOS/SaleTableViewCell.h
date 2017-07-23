//
//  SaleTableViewCell.h
//  Test-iOS
//
//  Created by Bhavin Ahir on 2017-07-13.
//  Copyright © 2017 Bhavin Ahir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SaleTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *saleLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UILabel *marketStatus;


@end
