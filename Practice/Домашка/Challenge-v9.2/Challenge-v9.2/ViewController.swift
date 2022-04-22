//
//  ViewController.swift
//  Challenge-v9.2
//
//  Created by Dinmukhammed Sagyntkan on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var greenButton: UIButton = {
        setupButtons(color: .green, text: "Don't Panic")
    }()
    
    private lazy var redButton: UIButton = {
        setupButtons(color: .red, text: "Panic")
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [greenButton, redButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 16
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .blue
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stackView.layoutIfNeeded()
        setupView()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let minButtonWidth = greenButton.intrinsicContentSize.width
        let greenButtonCurrentWidth = greenButton.layoutMarginsGuide.layoutFrame.width
        
        print(greenButtonCurrentWidth, minButtonWidth)
        if greenButtonCurrentWidth < minButtonWidth {
            stackView.axis = .vertical
        } else {
            stackView.axis = .horizontal
        }
        stackView.layoutIfNeeded()
    }
    
    private func setupView() {
        view.addSubview(stackView)
        
        let viewMargin = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: viewMargin.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: viewMargin.trailingAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func setupButtons(color: UIColor, text: String) -> UIButton {
        let button = UIButton()
        button.backgroundColor = color
        button.setTitle(text, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return button
    }
}

