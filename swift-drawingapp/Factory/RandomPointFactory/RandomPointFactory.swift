//
//  RandomPointFactory.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/12.
//

import UIKit

protocol RandomPointFactory {
    static func randomPoint(at: UIView) -> CGPoint
}
