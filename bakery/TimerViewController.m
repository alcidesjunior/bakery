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
    @property NSTimer *timer;
@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%d", _currentSec);
//    _progress.textColor = [UIColor redColor];
    [_progress setText:[NSString stringWithFormat:@"%02d", _currentSec]];
//    _progress.backgroundColor = [UIColor clearColor];
//    [self.view addSubview:_progress];
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];

}
-(void)timerFired{
  
    if (_currentSec >= 0) {
        _progress.text = [NSString stringWithFormat:@"%02d", _currentSec];
        NSLog(@"%02d",_currentSec);
    }else{
        [_timer invalidate];
    }
    _currentSec -= 1;
    
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
