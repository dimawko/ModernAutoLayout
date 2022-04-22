//
//  ViewController.swift
//  Challenge-v9.1
//
//  Created by Dinmukhammed Sagyntkan on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var redButtonHeightConstraint = redButton.heightAnchor.constraint(equalTo: greenButton.heightAnchor, multiplier: 4)
    lazy var greenButtonHeightConstraint = greenButton.heightAnchor.constraint(equalTo: redButton.heightAnchor, multiplier: 4)
    
    private let redButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Slow", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(redButtonPressed), for: .touchUpInside)
        return button
    }()
    
    private let greenButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Fast", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(greenButtonPressed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    @objc func redButtonPressed() {
        let animator = UIViewPropertyAnimator(duration: 0.5, dampingRatio: 1) {
            self.greenButtonHeightConstraint.isActive = false
            self.redButtonHeightConstraint.isActive = true
            self.view.layoutIfNeeded()
        }
        animator.startAnimation()
    }
    
    @objc func greenButtonPressed() {
        let animator = UIViewPropertyAnimator(duration: 0.5, dampingRatio: 1) {
            self.redButtonHeightConstraint.isActive = false
            self.greenButtonHeightConstraint.isActive = true
            self.view.layoutIfNeeded()
        }
        animator.startAnimation()
    }
    
    private func setupView() {
        view.addSubview(redButton)
        view.addSubview(greenButton)
        
        let viewMargin = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            redButton.leadingAnchor.constraint(equalTo: viewMargin.leadingAnchor),
            redButton.trailingAnchor.constraint(equalTo: greenButton.leadingAnchor, constant: -8),
            redButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            redButton.widthAnchor.constraint(equalTo: greenButton.widthAnchor),
            redButtonHeightConstraint,
            
            greenButton.trailingAnchor.constraint(equalTo: viewMargin.trailingAnchor),
            greenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

