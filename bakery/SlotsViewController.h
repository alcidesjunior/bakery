//
//  SlotsViewController.h
//  bakery
//
//  Created by Ada 2018 on 4/6/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Padaria.h"
@interface SlotsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *slot1;
@property (weak, nonatomic) IBOutlet UIImageView *slot2;
@property (weak, nonatomic) IBOutlet UIImageView *slot3;
@property (weak, nonatomic) IBOutlet UIImageView *slot4;
@property (weak, nonatomic) IBOutlet UIImageView *slot5;
@property (weak, nonatomic) IBOutlet UIImageView *slot6;
@property Padaria *padaria;
@end
