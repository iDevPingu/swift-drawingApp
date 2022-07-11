//
//  RandomRectangleOriginFactoryTest.swift
//  swift-drawingappTests
//
//  Created by pingu.hwang on 2022/07/11.
//

@testable import swift_drawingapp
import XCTest

class RandomRectangleOriginFactoryTest: XCTestCase {
    func test_random_rectangle_origin_create() throws {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let screenBounds = windowScene.windows.first?.bounds else { fatalError() }
        let rectangleSize: CGFloat = 100
        
        for _ in 0..<100 {
            let randomRectangleOrigin = RandomRectangleOriginFactory.random()
            XCTAssert(randomRectangleOrigin.x >= 0 && randomRectangleOrigin.x <= screenBounds.maxX-rectangleSize)
            XCTAssert(randomRectangleOrigin.y >= 0 && randomRectangleOrigin.y <= screenBounds.maxY-rectangleSize)
        }
    }
}
