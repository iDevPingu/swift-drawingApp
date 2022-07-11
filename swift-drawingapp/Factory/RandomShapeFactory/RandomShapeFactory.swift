//
//  RandomShapeFactory.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/12.
//

import UIKit

protocol RandomShapeFactory {
    static func randomShape(at: UIView) -> Shape
}
