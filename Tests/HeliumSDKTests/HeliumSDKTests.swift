import XCTest
@testable import HeliumSDK

final class HeliumSDKTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        Helium_iOS_SDK.initialize(apiKey: "")
        XCTAssertEqual(Constants.LOG_ENABLED, false)
    }
}
