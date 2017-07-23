//
//  MainViewController.m
//  Test-iOS
//
//  Created by Bhavin Ahir on 2017-07-12.
//  Copyright © 2017 Bhavin Ahir. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customiseNavBar];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)customiseNavBar{
    
    NSString *title = @"Offer #34462";
    NSString *View = @"Viewed 9 times";
    self.navigationItem.title = [NSString stringWithFormat:@"%@\n%@",title,View];
    
//    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(50, 0, self.navigationController.navigationBar.frame.size.width-100, self.navigationController.navigationBar.frame.size.height)];
//    
//    
//    UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, titleView.frame.size.width, titleView.frame.size.height)];
//    [titleLabel setTextAlignment:NSTextAlignmentCenter];
//    [titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:12.0]];
//    [titleLabel setNumberOfLines:0];
//    
//    NSString *titleString = @"This is a\n multiline string";
//    [titleLabel setText:titleString];
//    
//    [titleView addSubview:titleLabel];
//    
//    [self.navigationController.navigationItem setTitleView:titleView];
//    
    
    self.navigationItem.leftBarButtonItems=nil;
    UIImage *btnImg = [UIImage imageNamed:@"stroke5"];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;
    [self.navigationController.navigationBar
    setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    UIBarButtonItem * barButtonItem = [[UIBarButtonItem alloc] initWithImage:btnImg
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(goBack)];
    [self.navigationItem setLeftBarButtonItem:barButtonItem];
    
}

-(void)goBack{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
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
