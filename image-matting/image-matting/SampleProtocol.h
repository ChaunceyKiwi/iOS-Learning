//
//  SampleProtocol.h
//  image-matting
//
//  Created by Chauncey on 2017-07-05.
//  Copyright © 2017 Chauncey. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SampleProtocolDelegate <NSObject>

@required
- (void) processCompleted;
@end
// Protocol Definition ends here

@interface SampleProtocol : NSObject
{
  // Delegate to respond back
  id <SampleProtocolDelegate> _delegate;
}

@property (nonatomic, strong) id delegate;

-(void)startSampleProcess; // Instance method

@end
