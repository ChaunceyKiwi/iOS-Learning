//
//  ViewController.m
//  camera
//
//  Created by Chauncey on 2017-07-05.
//  Copyright © 2017 Chauncey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  imagePicker = [[UIImagePickerController alloc] init];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)showCamera:(id)sender {
  imagePicker.allowsEditing = YES;
  imagePicker.delegate = self;
  
  if ([UIImagePickerController isSourceTypeAvailable:
       UIImagePickerControllerSourceTypeCamera]) {
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
  }
  else {
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
  }
  
  [self presentViewController:imagePicker animated: YES completion: NULL];
}

- (IBAction)showAlbum:(id)sender {
  imagePicker.allowsEditing = YES;
  imagePicker.delegate = self;
  imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
  
  [self presentViewController:imagePicker animated: YES completion: NULL];
}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info{
  UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
  if (image == nil) {
    image = [info objectForKey:UIImagePickerControllerOriginalImage];
  }
  [self dismissViewControllerAnimated:YES completion: nil];
  imageView.image = image;
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
  [self dismissViewControllerAnimated:YES completion: nil];
}


@end
