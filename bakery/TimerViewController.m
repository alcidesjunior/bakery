//
//  TimerViewController.m
//  bakery
//
//  Created by Ada 2018 on 06/04/2018.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import "TimerViewController.h"

@interface TimerViewController ()
    @property (weak, nonatomic) IBOutlet UILabel *progress;
@property (weak, nonatomic) IBOutlet UIButton *dismiss;
@property (weak, nonatomic) IBOutlet UILabel *state1;
@property (weak, nonatomic) IBOutlet UILabel *state2;
@property (weak, nonatomic) IBOutlet UILabel *state3;
@property (weak, nonatomic) IBOutlet UILabel *state4;
@property NSTimer *timer;
@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _dismiss.enabled = NO;
    [_progress setText:[NSString stringWithFormat:@"%02d", _currentSec]];
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];

}
-(void)timerFired{
    _state1.textColor = [UIColor blackColor];
    if (_currentSec >= 0) {
        _progress.text = [NSString stringWithFormat:@"%02d", _currentSec];
        if (_currentSec < 20) {
            _state2.textColor = [UIColor blackColor];
        }
        if (_currentSec < 10) {
            _state3.textColor = [UIColor blackColor];
        }
    }else{
        [_timer invalidate];
        _state4.textColor = [UIColor blackColor];
        _dismiss.enabled = YES;

    }
    _currentSec -= 1;
    
}
- (IBAction)dismissModal:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
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
