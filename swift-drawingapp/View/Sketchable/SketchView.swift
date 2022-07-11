//
//  SketchView.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/11.
//

import Foundation
import UIKit

final class SketchView: UIView, Sketchable, DrawCommander {
    var drawer: Drawer
    var shapes: [Shape] = []
    
    init() {
        drawer = ShapeDrawer()
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func drawRectangle() {
        let rectangle = RandomRectangleFactory.randomShape(at: self)
        drawer.draw(at: self, with: rectangle)
    }
}
