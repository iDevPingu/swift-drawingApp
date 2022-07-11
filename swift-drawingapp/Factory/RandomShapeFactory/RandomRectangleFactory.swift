//
//  RandomRectangleFactory.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/11.
//

import UIKit

struct RandomRectangleFactory: RandomShapeFactory {
    static func randomShape(at: UIView) -> Shape {
        let randomColor = RandomColorFactory.random()
        let randomOrigin = RandomRectangleOriginFactory.randomPoint(at: at)
        let width: CGFloat = 100
        let height: CGFloat = 100
        
        return Rectangle(color: randomColor, frame: CGRect(x: randomOrigin.x, y: randomOrigin.y, width: width, height: height))
    }
}
