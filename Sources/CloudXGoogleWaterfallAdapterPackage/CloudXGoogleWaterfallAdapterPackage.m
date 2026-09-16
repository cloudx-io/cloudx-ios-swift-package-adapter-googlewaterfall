#import <CloudXGoogleWaterfallAdapter/CloudXGoogleWaterfallAdapter.h>

@interface CloudXGoogleWaterfallAdapterPackageLoader : NSObject
@end

@implementation CloudXGoogleWaterfallAdapterPackageLoader

+ (void)load {
    CloudXGoogleWaterfallAdapterRegister();
}

@end
