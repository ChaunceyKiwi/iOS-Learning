//
//  ViewController.h
//  camera
//
//  Created by Chauncey on 2017-07-05.
//  Copyright © 2017 Chauncey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
  UIImagePickerController *imagePicker;
  IBOutlet UIImageView *imageView;
}

- (IBAction)showCamera:(id)sender;
- (IBAction)showAlbum:(id)sender;


@property (nonatomic, retain) UIImagePickerController *picker;

@end

