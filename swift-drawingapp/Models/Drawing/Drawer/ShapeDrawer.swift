//
//  ShapeDrawer.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/11.
//

import Foundation
import UIKit

struct ShapeDrawer: Drawer {
    func draw(at: UIView, with: Shape) {
        let shapeView = with.getViewForDraw(at: at)
        at.addSubview(shapeView)
    }
}
