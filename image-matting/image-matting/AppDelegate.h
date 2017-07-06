//
//  AppDelegate.h
//  image-matting
//
//  Created by Chauncey on 2017-07-04.
//  Copyright © 2017 Chauncey. All rights reserved.
//

#import <UIKit/UIKit.h>

// Forward declaration (Used when class will be defined /imported in future)
@class ViewController;

// Interface for Appdelegate
@interface AppDelegate : UIResponder <UIApplicationDelegate>

// Property window
@property (strong, nonatomic) UIWindow *window;

// Property Viewcontroller
@property (strong, nonatomic) ViewController *viewController;


//this marks end of interface
@end

