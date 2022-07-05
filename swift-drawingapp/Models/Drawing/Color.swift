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
