//
//  ViewController.swift
//  Challenge-v8.1
//
//  Created by Dinmukhammed Sagyntkan on 21.04.2022.
//

import UIKit

class StackViewsViewController: UIViewController {
    
    private lazy var redButton: UIButton = {
        setupButtons(color: .red, title: "Low")
    }()
    
    private lazy var yellowButton: UIButton = {
        setupButtons(color: .yellow, title: "Medium")
    }()
    
    private lazy var greenButton: UIButton = {
        setupButtons(color: .green, title: "High")
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Engine Power"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        label.tintColor = .black
        return label
    }()
    
    private lazy var enginePowerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, redButton, yellowButton, greenButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    private func setupView() {
        view.addSubview(enginePowerStackView)
        
        let viewMargin = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            enginePowerStackView.leadingAnchor.constraint(equalTo: viewMargin.leadingAnchor),
            enginePowerStackView.trailingAnchor.constraint(equalTo: viewMargin.trailingAnchor),
            enginePowerStackView.topAnchor.constraint(equalTo: viewMargin.topAnchor),
        ])
    }
    
    private func setupButtons(color: UIColor, title: String) -> UIButton {
        let button = UIButton()
        button.titleLabel?.textColor = .black
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.backgroundColor = color
        button.setTitleColor(.black, for: .normal)
        return button
    }


}

