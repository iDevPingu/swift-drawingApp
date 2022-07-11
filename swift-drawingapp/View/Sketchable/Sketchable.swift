//
//  Sketchable.swift
//  swift-drawingapp
//
//  Created by pingu.hwang on 2022/07/11.
//

import Foundation
import UIKit

protocol Sketchable {
    var drawer: Drawer { get }
    var shapes: [Shape] { get set }
}
