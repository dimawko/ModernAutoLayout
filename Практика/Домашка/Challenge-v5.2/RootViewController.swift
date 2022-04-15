//
//  RootViewController.swift
//  Challenge-v5.2
//
//  Created by Dinmukhammed Sagyntkan on 15.04.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    private let padding: CGFloat = 50
    
    private let RGBView: RGBView = {
        let view = RGBView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(RGBView)
        
        NSLayoutConstraint.activate([
        
        ])
    }
}
