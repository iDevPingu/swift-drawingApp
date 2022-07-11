//
//  RandomColorFactoryTest.swift
//  swift-drawingappTests
//
//  Created by pingu.hwang on 2022/07/11.
//

@testable import swift_drawingapp
import XCTest

class RandomColorFactoryTest: XCTestCase {
    private let systemColors: [UIColor] =  [
        .magenta,
        .darkGray,
        .cyan,
        .brown,
        .yellow,
        .blue,
        .systemBlue,
        .black,
        .darkText,
        .green,
        .orange,
        .purple,
        .systemTeal,
        .systemPink,
        .systemCyan,
        .systemGray,
        .systemMint
    ]
    
    func test_random_color_create() throws {
        let randomColor = RandomColorFactory.random()
        
        XCTAssert(systemColors.contains(randomColor))
    }
}
