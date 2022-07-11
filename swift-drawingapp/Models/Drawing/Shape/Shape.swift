//
//  Shape.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/05.
//

import Foundation
import UIKit

protocol Shape {
    var id: UUID { get }
    var color: UIColor { get }
    var frame: CGRect { get set }
    var route: [CGPoint] { get set }
    var isSelected: Bool { get set }
    
    func getViewForDraw(at: UIView) -> UIView
}

extension Shape {
    var highlighedColor: UIColor { .systemRed }
}
