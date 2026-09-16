import CloudXGoogleWaterfallAdapter
import CloudXGoogleWaterfallAdapterPackage
import XCTest

final class CloudXGoogleWaterfallAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXGoogleWaterfallAdapterVersion, "13.9.0.0")
        XCTAssertNotNil(NSClassFromString("CLXGoogleWaterfallInitializer"))
    }
}
