//
//  InicioViewController.m
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import "InicioViewController.h"
#import "TimerViewController.h"
#import "Padaria.h"

@interface InicioViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnPao;
@property (weak, nonatomic) IBOutlet UIButton *btnRosca;
@property (weak, nonatomic) IBOutlet UIButton *btnBiscoito;
@property (weak, nonatomic) IBOutlet UIButton *btnPizza;

@property NSArray *ingredientes;
@property Padaria *padaria;
@property int sec;

@end

@implementation InicioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _ingredientes = [NSArray arrayWithObjects:@"ingredientePao",@"ingredienteRosca",@"ingredienteBiscoito",@"ingredientePizza", nil];

}
- (IBAction)fazPao:(id)sender {
    Pao *pao = [[Pao alloc]init];
    _sec = pao.tempo;
    [self performSegueWithIdentifier:@"modalTimer" sender:pao];
}
- (IBAction)fazRosca:(id)sender {
    Rosquinha *rc =[Rosquinha new ];
    _sec = rc.tempo;
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
        TimerViewController *controller = segue.destinationViewController;
        controller.currentSec = _sec;
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
