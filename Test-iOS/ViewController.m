//
//  ViewController.m
//  Test-iOS
//
//  Created by Bhavin Ahir on 2017-07-12.
//  Copyright © 2017 Bhavin Ahir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)seeDetail:(id)sender {
    
UINavigationController *navC = [self.storyboard instantiateViewControllerWithIdentifier:@"privateNav"];
    [self presentViewController:navC animated:YES completion:nil];
    
    
}
@end
