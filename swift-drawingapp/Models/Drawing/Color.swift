//
//  Color.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/05.
//

import Foundation
import UIKit

protocol RandomValueFactory {
    associatedtype RandomValue
    static func random() -> RandomValue
}

final class RandomColorFactory: RandomValueFactory {
    typealias RandomValue = UIColor
    
    static func random() -> UIColor {
        let systemColors: [UIColor] = [
            .magenta, .darkGray, .cyan, .brown, .yellow, .blue, .systemBlue, .black, .darkText, .green, .orange, .purple, .systemTeal, .systemPink, .systemCyan, .systemGray, .systemMint
        ]
        
        return systemColors.randomElement() ?? .magenta
    }
}
