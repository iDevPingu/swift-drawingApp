//
//  RandomRectangleOriginFactory.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/11.
//

import Foundation
import UIKit

struct RandomRectangleOriginFactory: RandomPointFactory {
    static func randomPoint(at: UIView) -> CGPoint {
        let rectangleSize: CGFloat = 100.0
        let randomX = CGFloat.random(in: 0...at.bounds.maxX-rectangleSize)
        let randomY = CGFloat.random(in: 0...at.bounds.maxY-rectangleSize)
        
        return CGPoint(x: randomX, y: randomY)
    }
}
