import XCTest
@testable import MyLibrary

final class BooInitTestCase: XCTestCase, @unchecked Sendable {
 
    func test_validBits() throws {
        // test for valid bits
        if let boolFromTrueBit = Bool(bit: 1) {
            XCTAssertTrue(boolFromTrueBit)
            // XCTXCTAssertTrue doesn't work with optionals, so unwrap
        } else {
            XCTFail() // the test can pass if anything other than 1 or 0 is passed in
            // eg. nil would pass
        }
        
        let boolFromFalseBit = try XCTUnwrap( Bool(bit: 0) )
        XCTAssertFalse(boolFromFalseBit)
    }
    
    func test_invalidBits() {
        XCTAssertNil( Bool(bit: -1) )
        XCTAssertNil( Bool(bit: 2) )
    }
}
