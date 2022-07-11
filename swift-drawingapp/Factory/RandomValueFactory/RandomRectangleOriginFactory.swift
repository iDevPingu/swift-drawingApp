//
//  RandomRectangleOriginFactory.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/11.
//

import Foundation
import UIKit

struct RandomRectangleOriginFactory: RandomValueFactory {
    typealias RandomValue = CGPoint
    
    static func random() -> CGPoint {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let screenBounds = windowScene.windows.first?.bounds else { return .zero }
//              let safeArea = windowScene.windows.first?.safeAreaInsets else { return .zero }
        let rectangleSize: CGFloat = 100.0
        
        let randomX = CGFloat.random(in: 0...screenBounds.maxX-rectangleSize)
        let randomY = CGFloat.random(in: 0...screenBounds.maxY-rectangleSize)
        
        return CGPoint(x: randomX, y: randomY)
    }
}
