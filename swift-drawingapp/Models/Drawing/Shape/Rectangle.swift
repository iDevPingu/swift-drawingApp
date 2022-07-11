//
//  Rectangle.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/05.
//

import Foundation
import UIKit

final class Rectangle: Shape {
    let id: UUID = .init()
    let color: UIColor
    var frame: CGRect
    var route: [CGPoint] = []
    var isSelected: Bool = false
    
    init(color: UIColor, frame: CGRect) {
        self.color = color
        self.frame = frame
    }
    
    func getViewForDraw(at: UIView) -> UIView {
        let rectangleView = UIView(frame: frame)
        rectangleView.backgroundColor = color
        return rectangleView
    }
}
