//
//  ViewController.swift
//  Challenge-v8.2
//
//  Created by Dinmukhammed Sagyntkan on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.setTitle("Share", for: .normal)
        return button
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .orange
        imageView.image = UIImage(named: "sun")
        imageView.setContentHuggingPriority(.defaultLow - 1, for: .vertical)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var imageAndButtonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [imageView, button])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 8
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        view.addSubview(imageAndButtonStackView)
        
        let viewMargin = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            imageAndButtonStackView.leadingAnchor.constraint(equalTo: viewMargin.leadingAnchor),
            imageAndButtonStackView.topAnchor.constraint(equalTo: viewMargin.topAnchor),
            imageAndButtonStackView.trailingAnchor.constraint(equalTo: viewMargin.trailingAnchor),
            imageAndButtonStackView.bottomAnchor.constraint(equalTo: viewMargin.bottomAnchor)
        ])
    }
}

