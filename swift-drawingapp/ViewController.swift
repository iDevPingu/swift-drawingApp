//
//  ViewController.swift
//  swift-drawingapp
//
//  Created by JK on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {
    private let sketchView = SketchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(sketchView)
        
        NSLayoutConstraint.activate([
            sketchView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            sketchView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            sketchView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            sketchView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }


}

