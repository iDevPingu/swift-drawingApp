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
    
    let highlighedColor: UIColor = .systemRed
    var isSelected: Bool = false
    
    init(color: UIColor, frame: CGRect) {
        self.color = color
        self.frame = frame
    }
}
