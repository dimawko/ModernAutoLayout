//
//  ViewController.swift
//  Challenge-v7.3
//
//  Created by Dinmukhammed Sagyntkan on 18.04.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    private let _view: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        setupView()
    }
    
    private func setupView() {
        view.addSubview(_view)
        
        let viewWidthOptionalAnchor = _view.widthAnchor.constraint(equalTo: view.widthAnchor)
        viewWidthOptionalAnchor.priority = .defaultLow
        
        NSLayoutConstraint.activate([
            _view.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            _view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            _view.heightAnchor.constraint(lessThanOrEqualTo: view.heightAnchor),
            _view.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor),
            
            _view.widthAnchor.constraint(equalTo: _view.heightAnchor),
            viewWidthOptionalAnchor
        ])
    }
}

