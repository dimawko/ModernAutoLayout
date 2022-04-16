//
//  RootViewController.swift
//  Challenge-v5.2
//
//  Created by Dinmukhammed Sagyntkan on 15.04.2022.
//

import UIKit
import Inject


class RootViewController: UIViewController {
    
    let viewController = Inject.ViewControllerHost(RootViewController())
    RootViewController.pushViewController(viewController, animated: true)
    
    private let padding: CGFloat = 50
    
    private let rgbView: RGBView = {
        let view = RGBView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
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
            rgbView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            rgbView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            rgbView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            rgbView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
    }
}
