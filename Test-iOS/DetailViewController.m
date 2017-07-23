//
//  DetailViewController.m
//  Test-iOS
//
//  Created by Bhavin Ahir on 2017-07-13.
//  Copyright © 2017 Bhavin Ahir. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"
#import "SaleTableViewCell.h"
#import "DetailTableViewCell.h"
#import "RatingsTableViewCell.h"
#import "ImageTableViewCell.h"
#import "MostureDetailTableViewCell.h"
#import "CommentTableViewCell.h"
#import "FooterViewTableViewCell.h"

@interface DetailViewController (){
}

@property (strong,nonatomic)  FooterViewTableViewCell *footerView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customiseNavBar];
    [self getViewsFromNib];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)getViewsFromNib{
    
    UINib *nib = [UINib nibWithNibName:@"SaleTableViewCell" bundle:nil];
    [[self tableView] registerNib:nib forCellReuseIdentifier:@"SaleTableViewCell"];
    
    nib = [UINib nibWithNibName:@"DetailTableViewCell" bundle:nil];
    [[self tableView] registerNib:nib forCellReuseIdentifier:@"DetailTableViewCell"];
    
    nib = [UINib nibWithNibName:@"RatingsTableViewCell" bundle:nil];
    [[self tableView] registerNib:nib forCellReuseIdentifier:@"RatingsTableViewCell"];
    
    nib = [UINib nibWithNibName:@"ImageTableViewCell" bundle:nil];
    [[self tableView] registerNib:nib forCellReuseIdentifier:@"ImageTableViewCell"];
    
    nib = [UINib nibWithNibName:@"MostureDetailTableViewCell" bundle:nil];
    [[self tableView] registerNib:nib forCellReuseIdentifier:@"MostureDetailTableViewCell"];
    
    nib = [UINib nibWithNibName:@"CommentTableViewCell" bundle:nil];
    [[self tableView] registerNib:nib forCellReuseIdentifier:@"CommentTableViewCell"];
    
    _footerView =[[[NSBundle mainBundle] loadNibNamed:@"FooterViewTableViewCell" owner:self options:nil] objectAtIndex:0];
    
}

-(void)customiseNavBar{
    
    NSString *title = @"Offer #34462";
    NSString *View = @"Viewed 9 times";
    self.navigationItem.title = [NSString stringWithFormat:@"%@\n%@",title,View];
    self.navigationItem.leftBarButtonItems=nil;
    UIImage *btnImg = [UIImage imageNamed:@"stroke5"];
    
   self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
   self.navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;
//    [self.navigationController.navigationBar
//     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    UIBarButtonItem * barButtonItem = [[UIBarButtonItem alloc] initWithImage:btnImg
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(goBack)];
    [self.navigationItem setLeftBarButtonItem:barButtonItem];
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    [self getApiData];
}

-(void)getApiData{




}


-(void)goBack{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self addFooterView];
    
}
-(void)addFooterView{
    self.tableView.tableFooterView = _footerView;
}

#pragma mark - Table view data source


- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [UIView performWithoutAnimation:^{
        [cell layoutIfNeeded];
    }];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 6;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section==0) {
        return 0;
    }
    return 75;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        return 120 ;
    }
    
    if (indexPath.row == 1) {
        return 220;
    }
    if (indexPath.row == 2) {
        return 40;
    }
    if (indexPath.row == 3) {
        return 60;
    }
    if (indexPath.row == 4) {
        return 70;
    } if (indexPath.row == 5) {
        return 60;
    }
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    tableView.allowsSelection = NO;
    UITableViewCell *cell;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if (indexPath.row==0) {
       
        SaleTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"SaleTableViewCell" forIndexPath:indexPath];
        return cell;
    }
    else if (indexPath.row==1){
        
        DetailTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell" forIndexPath:indexPath];
        
        if (cell == nil) {
            cell = [[DetailTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DetailTableViewCell"];
        }
        return cell;
        
    }else if (indexPath.row==2){
        
        RatingsTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"RatingsTableViewCell" forIndexPath:indexPath];
        return cell;
        
    }else if (indexPath.row==3){
        
        ImageTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"ImageTableViewCell" forIndexPath:indexPath];
        if (cell == nil) {
            cell = [[ImageTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ImageTableViewCell"];
        }
        
        return cell;
        
    }else if (indexPath.row==4){
        
        MostureDetailTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"MostureDetailTableViewCell" forIndexPath:indexPath];
        if (cell == nil) {
            cell = [[MostureDetailTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MostureDetailTableViewCell"];
        }
        return cell;
        
    }else if (indexPath.row==5){
        
        CommentTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"CommentTableViewCell" forIndexPath:indexPath];
        if (cell == nil) {
            cell = [[CommentTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CommentTableViewCell"];
        }
        return cell;
        }
    return cell;
}
@end
