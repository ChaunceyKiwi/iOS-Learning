#import "GaussianKernel.h"

@implementation GaussianKernel

@synthesize inputImage;
@synthesize inputRadius;

+ (NSDictionary *)customAttributes
{
    return @{
             @"inputRadius" :
                 @{
                     kCIAttributeMin       : @3.0,
                     kCIAttributeMax       : @15.0,
                     kCIAttributeDefault   : @7.5,
                     kCIAttributeType      : kCIAttributeTypeScalar
                     }
             };
}

- (void)setDefaults
{
    self.inputRadius = @7.5;
}

- (CIImage *)outputImage
{
    CIImage *result = self.inputImage;
    
    CGRect rect;
    rect.origin = CGPointZero;
    CGRect cropRectLeft = CGRectMake(0, 0, rect.size.width, rect.size.height);
    CIVector *cropRect = [CIVector vectorWithX:rect.origin.x Y:rect.origin.y Z:rect.size.width W:rect.size.height];
    
    result = [[CIFilter filterWithName:@"CIGaussianBlur" keysAndValues:kCIInputImageKey, result, @"inputRadius", [NSNumber numberWithFloat:inputRadius.floatValue], nil].outputImage imageByCroppingToRect:cropRectLeft];
    
    result = [CIFilter filterWithName:@"CICrop" keysAndValues:@"inputImage", result, @"inputRectangle", cropRect, nil].outputImage;
    
    result = [CIFilter filterWithName:@"CIDifferenceBlendMode" keysAndValues:kCIInputImageKey, result, kCIInputBackgroundImageKey, result, nil].outputImage;
    
    return result;
}

@end