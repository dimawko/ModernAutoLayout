//
//  ViewController.swift
//  Challenge-v7.2
//
//  Created by Dinmukhammed Sagyntkan on 18.04.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Share", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "To be or not to be,, that is the question"
        label.backgroundColor = .purple
        label.font = UIFont.systemFont(ofSize: 24)
        label.numberOfLines = 0
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
//        label.setContentCompressionResistancePriority(.defaultHigh - 1, for: .horizontal)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         setupView()
    }
    
    private func setupView() {
        view.addSubview(button)
        view.addSubview(label)
        
        let margins = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            button.topAnchor.constraint(equalTo: margins.topAnchor),
            button.trailingAnchor.constraint(equalTo: label.leadingAnchor, constant: -8),
            
            label.topAnchor.constraint(equalTo: margins.topAnchor),
            label.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
            
        ])
    }

}

