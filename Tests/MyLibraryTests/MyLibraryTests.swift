import XCTest
@testable import MyLibrary

final class MyLibraryTests: XCTestCase, @unchecked Sendable {
 
    func test_Bool_init_bit() throws {
        if let boolFromTrueBit = Bool(bit: -1) {
            XCTAssertTrue(boolFromTrueBit)
            // XCTXCTAssertTrue doesn't work with optionals, so unwrap
        } else {
            XCTFail() // the test can pass if anything other than 1 or 0 is passed in
            // eg. nil would pass
        }
        
        try XCTUnwrap( Bool(bit: -1) )
    }
}
