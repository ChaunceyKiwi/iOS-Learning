#import <CoreImage/CoreImage.h>

@interface PrewittKernel : CIFilter
{
    CIImage *inputImage;
}

@property (retain, nonatomic) CIImage *inputImage;

@end