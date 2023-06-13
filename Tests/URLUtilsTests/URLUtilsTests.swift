import Foundation
import XCTest

import URLUtilsSwift

class URLUtilsTestsSwift: XCTestCase {

    func testNSURL() throws {
        let url = NSURL(string: "https://domain.com/path?a=123")!
        /// `queryParams` is  available ONLY on NSURL types
        let queryParams = url.queryParams
        XCTAssertEqual("123", queryParams["a"])
    }

    func testURL() throws { // Problem: Testing with URL does NOT compile (With NSURL is compiles OK)
        let url = URL(string: "https://domain.com/path?a=123")!
        /// `queryParams` is NOT available on URL types
        let queryParams = url.queryParams
        XCTAssertEqual("123", queryParams["a"])
    }
}
