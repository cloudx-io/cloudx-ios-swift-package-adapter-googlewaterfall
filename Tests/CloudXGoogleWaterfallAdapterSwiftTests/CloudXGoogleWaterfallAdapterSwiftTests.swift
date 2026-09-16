import CloudXGoogleWaterfallAdapter
import CloudXGoogleWaterfallAdapterPackage
import XCTest

final class CloudXGoogleWaterfallAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXGoogleWaterfallAdapterVersion, "13.6.0.4")
        XCTAssertNotNil(NSClassFromString("CLXGoogleWaterfallInitializer"))
    }
}
