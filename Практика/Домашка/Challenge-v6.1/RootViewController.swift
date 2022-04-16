//
//  RootViewController.swift
//  Challenge-v6.1
//
//  Created by Dinmukhammed Sagyntkan on 16.04.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    private let viewMargin: CGFloat = 50
    
    private let rgbView: RGBView = {
        let view = RGBView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(rgbView)
        
        NSLayoutConstraint.activate([
            rgbView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            rgbView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: viewMargin),
            rgbView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            rgbView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            rgbView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
        
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: viewMargin, bottom: 0, trailing: viewMargin)
    }
}
