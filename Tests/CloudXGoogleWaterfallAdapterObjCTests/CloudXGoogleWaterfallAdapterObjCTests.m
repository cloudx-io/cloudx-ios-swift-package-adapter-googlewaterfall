@import CloudXGoogleWaterfallAdapter;
@import CloudXGoogleWaterfallAdapterPackage;
@import XCTest;

@interface CloudXGoogleWaterfallAdapterObjCTests : XCTestCase
@end

@implementation CloudXGoogleWaterfallAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXGoogleWaterfallAdapterVersion, @"13.6.0.4");
    XCTAssertNotNil(NSClassFromString(@"CLXGoogleWaterfallInitializer"));
}

@end
