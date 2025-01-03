import XCTest
@testable import MyLibrary

final class MyLibraryTests: XCTestCase, @unchecked Sendable {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
        
        XCTAssertEqual(MyLibrary().text, "Hello, World!")
    }
    
    static let allTests = [
        ("testExample", testExample),
    ]
}
