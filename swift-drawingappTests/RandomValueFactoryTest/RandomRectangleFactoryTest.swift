//
//  RandomRectangleFactoryTest.swift
//  swift-drawingappTests
//
//  Created by pingu.hwang on 2022/07/11.
//

@testable import swift_drawingapp
import XCTest

class RandomRectangleFactoryTest: XCTestCase {
    func test_random_rectangle_create() throws {
        let randomRectangle = RandomRectangleFactory.random()
        
        XCTAssertEqual(randomRectangle.frame.width, 100)
        XCTAssertEqual(randomRectangle.frame.height, 100)
    }
}
