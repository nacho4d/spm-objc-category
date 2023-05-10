import Foundation
import XCTest
@testable import URLUtils

//Ugly work around just in case
extension NSObject {
    func someMethod(method: String) {
        self.perform(Selector(method))
    }
}

class URLUtilsTestsSwift: XCTestCase {

    func testNSURL() throws {
        let url = NSURL(string: "https://domain.com/path?a=123")!
        /// `queryParams` is  available ONLY on NSURL types
        let queryParams = url.queryParams
        XCTAssertEqual("123", queryParams["a"])
    }

    func testURL() throws { // Testing with URL does NOT compile (With NSURL is compiles OK)
        let url = URL(string: "https://domain.com/path?a=123")!
        /// `queryParams` is NOT available on URL types
        let queryParams1 = (url as? NSObject)?.someMethod(method: "queryParams")
        //url.queryParams
        let _ = ObjcFile()
        //XCTAssertEqual("123", queryParams["a"])
    }
}
