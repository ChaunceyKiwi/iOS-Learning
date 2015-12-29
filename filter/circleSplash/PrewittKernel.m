#import <CoreImage/CoreImage.h>

@interface PrewittKernel : CIFilter
{
    CIImage *inputImage;
}

@property (retain, nonatomic) CIImage *inputImage;

@end


@implementation PrewittKernel

@synthesize inputImage;

- (CIKernel *)prewittKernel
{
    static CIKernel *kernelPrewitt = nil;
    
    NSBundle    *bundle = [NSBundle bundleForClass:NSClassFromString(@"PrewittKernel")];
    NSStringEncoding encoding = NSUTF8StringEncoding;
    NSError     *error = nil;
    NSString    *code = [NSString stringWithContentsOfFile:[bundle pathForResource:@"PrewittKernel" ofType:@"cikernel"] encoding:encoding error:&error];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        kernelPrewitt = [CIKernel kernelWithString:code];
    });
    return kernelPrewitt;
}

- (CIImage *)outputImage
{
    CIImage *result = self.inputImage;
    return [[self prewittKernel] applyWithExtent:result.extent roiCallback:^CGRect(int index, CGRect rect) {
        return CGRectMake(0, 0, CGRectGetWidth(result.extent), CGRectGetHeight(result.extent));
    } arguments:@[result]];
}

@end