//
//  ViewController.h
//  image-matting
//
//  Created by Chauncey on 2017-07-04.
//  Copyright © 2017 Chauncey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController
{
  IBOutlet UILabel *titleLabel;
  IBOutlet UILabel *delegateLabel;
  
  IBOutlet UILabel *xLabel;
  IBOutlet UILabel *yLabel;
  IBOutlet UILabel *zLabel;
}


@property (nonatomic, strong) id delegate;

- (IBAction)setTitle:(id)sender;

@end

