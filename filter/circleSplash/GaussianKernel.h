#import <CoreImage/CoreImage.h>

@interface GaussianKernel : CIFilter
{
    CIImage *inputImage;
    NSNumber *inputRadius;
}

@property (retain, nonatomic) CIImage *inputImage;
@property (retain, nonatomic) NSNumber *inputRadius;

@end