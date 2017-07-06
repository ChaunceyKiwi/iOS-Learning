//
//  ViewController.m
//  image-matting
//
//  Created by Chauncey on 2017-07-04.
//  Copyright © 2017 Chauncey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  SampleProtocol *sampleProtocol = [[SampleProtocol alloc] init];
  sampleProtocol.delegate = self;
  [delegateLabel setText: @"Processing..."];
  [sampleProtocol startSampleProcess];
  
  CMMotionManager* motionManager = [[CMMotionManager alloc] init];
  [motionManager startAccelerometerUpdates];
  CMAccelerometerData* data = [motionManager accelerometerData];

  while (data.acceleration.x == 0) {
    data = [motionManager accelerometerData];
  }
  
  [xLabel setText: [NSString stringWithFormat: @"%f", data.acceleration.x]];
  [yLabel setText: [NSString stringWithFormat: @"%f", data.acceleration.y]];
  [zLabel setText: [NSString stringWithFormat: @"%f", data.acceleration.x]];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (IBAction)setTitle:(id)sender {
    [titleLabel setText:@"Hello"];
}

#pragma mark - Sample protocol delegate
-(void) processCompleted{
  [delegateLabel setText: @"Process completed"];
}

@end
