@import CloudXGoogleWaterfallAdapter;
@import CloudXGoogleWaterfallAdapterPackage;
@import XCTest;

@interface CloudXGoogleWaterfallAdapterObjCTests : XCTestCase
@end

@implementation CloudXGoogleWaterfallAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXGoogleWaterfallAdapterVersion, @"13.9.0.0");
    XCTAssertNotNil(NSClassFromString(@"CLXGoogleWaterfallInitializer"));
}

@end
