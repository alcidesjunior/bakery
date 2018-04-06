//
//  InicioViewController.m
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import "InicioViewController.h"
#import "Padaria.h"

@interface InicioViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnPao;
@property (weak, nonatomic) IBOutlet UIButton *btnRosca;
@property (weak, nonatomic) IBOutlet UIButton *btnBiscoito;
@property (weak, nonatomic) IBOutlet UIButton *btnPizza;

@property NSArray *ingredientes;
@property Padaria *padaria;

@end

@implementation InicioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _ingredientes = [NSArray arrayWithObjects:@"ingredientePao",@"ingredienteRosca",@"ingredienteBiscoito",@"ingredientePizza", nil];
    BOOL identicalStringFound = NO;
//    for (Slot *slot in _padaria.slots) {
//        if ([_ingredientes indexOfObjectIdenticalTo:[slot ingrediente]] != NSNotFound) {
//            identicalStringFound = YES;
//            _btnPao.enabled = YES;
//            _btnRosca.enabled = YES;
//            _btnPizza.enabled = YES;
//            _btnBiscoito.enabled = YES;
//        }
//        else {
//            identicalStringFound = NO;
//            _btnBiscoito.enabled = NO;
//        }
//    }
}
- (IBAction)fazPao:(id)sender {
    [self performSegueWithIdentifier:@"modalTimer" sender:sender];
}
- (IBAction)fazRosca:(id)sender {
    [self performSegueWithIdentifier:@"modalTimer" sender:sender];
}
- (IBAction)fazBiscoito:(id)sender {
    [self performSegueWithIdentifier:@"modalTimer" sender:sender];
}
- (IBAction)fazPizza:(id)sender {
    [self performSegueWithIdentifier:@"modalTimer" sender:sender];

}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"modalTimer"]) {
        
    }
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
