//
//  RandomRectangleFactory.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/11.
//

import Foundation
import UIKit

struct RandomRectangleFactory: RandomValueFactory {
    typealias RandomValue = Rectangle
    
    static func random() -> Rectangle {
        let randomColor = RandomColorFactory.random()
        let randomOrigin = RandomRectangleOriginFactory.random()
        let width: CGFloat = 100
        let height: CGFloat = 100
        
        return Rectangle(color: randomColor, frame: CGRect(x: randomOrigin.x, y: randomOrigin.y, width: width, height: height))
    }
}
