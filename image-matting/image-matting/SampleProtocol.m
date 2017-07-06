//
//  SampleProtocol.m
//  image-matting
//
//  Created by Chauncey on 2017-07-05.
//  Copyright © 2017 Chauncey. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol

-(void)startSampleProcess {
  [NSTimer scheduledTimerWithTimeInterval: 3.0 target: self.delegate
           selector: @selector(processCompleted) userInfo: nil repeats: NO];
}

@end
