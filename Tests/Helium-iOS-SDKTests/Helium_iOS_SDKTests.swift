import XCTest
@testable import Helium_iOS_SDK

final class Helium_iOS_SDKTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        Helium_iOS_SDK.initialize(apiKey: "")
        XCTAssertEqual(Constants.LOG_ENABLED, false)
    }
}
