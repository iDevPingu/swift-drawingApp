//
//  Color.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/05.
//

import Foundation
import UIKit

protocol RandomValueGenerator {
    associatedtype RandomValue
    static func random() -> RandomValue
}

final class RandomColorGenerator: RandomValueGenerator {
    typealias RandomValue = UIColor
    
    static func random() -> UIColor {
        let randomRed = CGFloat((1...255).randomElement() ?? 255)
        let randomGreen = CGFloat((1...255).randomElement() ?? 255)
        let randomBlue = CGFloat((1...255).randomElement() ?? 255)
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
    }
}
