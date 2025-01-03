import XCTest
@testable import MyLibrary

final class MyLibraryTests: XCTestCase, @unchecked Sendable {
 
    func test_Bool_init_bit() {
        if Bool(bit: 1) == false {
            XCTFail()
        }
    }
}
