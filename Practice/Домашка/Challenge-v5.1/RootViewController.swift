//
//  RootViewController.swift
//  Challenge-v5.1
//
//  Created by Dinmukhammed Sagyntkan on 15.04.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    private let twoViews: TwoViews = {
        let view = TwoViews()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(twoViews)
        
        NSLayoutConstraint.activate([
            twoViews.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            twoViews.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            twoViews.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            twoViews.topAnchor.constraint(equalTo: view.topAnchor)
        ])
    }
    
    
}
