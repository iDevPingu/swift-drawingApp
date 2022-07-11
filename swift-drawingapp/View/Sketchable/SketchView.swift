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
    
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [drawRectangleButton])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 0.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var drawRectangleButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(drawRectangle), for: .touchUpInside)
        button.setTitle("사각형", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    init() {
        drawer = ShapeDrawer()
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .white
        
        addSubview(buttonStackView)
        
        NSLayoutConstraint.activate([
            buttonStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            buttonStackView.heightAnchor.constraint(equalToConstant: 60),
            buttonStackView.widthAnchor.constraint(equalToConstant: 150),
            buttonStackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    func drawRectangle() {
        let rectangle = RandomRectangleFactory.randomShape(at: self)
        shapes.append(rectangle)
        drawer.draw(at: self, with: rectangle)
    }
}
