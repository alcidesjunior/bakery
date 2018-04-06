//
//  SlotsViewController.m
//  bakery
//
//  Created by Ada 2018 on 4/6/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import "SlotsViewController.h"
#import "Padaria.h"
@interface SlotsViewController ()

@end

@implementation SlotsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _padaria = [Padaria sharedInstance];
    _slot1.image = [UIImage imageNamed:@"slotVazio"];
    _slot2.image = [UIImage imageNamed:@"slotVazio"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
