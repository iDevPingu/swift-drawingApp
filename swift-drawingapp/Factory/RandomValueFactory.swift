//
//  RandomValueFactory.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/11.
//

import Foundation

protocol RandomValueFactory {
    associatedtype RandomValue
    static func random() -> RandomValue
}
