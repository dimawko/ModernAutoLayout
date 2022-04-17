//
//  ViewController.swift
//  Challenge-v7.1
//
//  Created by Dinmukhammed Sagyntkan on 18.04.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    private lazy var williamLabel: UILabel = {
        getLabels(text: "William \n Shakespeare", color: .blue)
    }()
    
    private lazy var quoteLabel: UILabel = {
        getLabels(text: "To be or not to be, that is the question", color: .red)
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        williamLabel.numberOfLines = 0
        setupView()
        
    }
    
    private func setupView() {
        let margin = view.layoutMarginsGuide
        let quoteLabelWidthConstraint = quoteLabel.widthAnchor.constraint(lessThanOrEqualTo: williamLabel.widthAnchor, multiplier: 2)
        quoteLabelWidthConstraint.priority = .defaultLow
        
        view.addSubview(williamLabel)
        view.addSubview(quoteLabel)
        
        NSLayoutConstraint.activate([
            williamLabel.leadingAnchor.constraint(equalTo: margin.leadingAnchor),
            williamLabel.topAnchor.constraint(equalTo: margin.topAnchor),
            williamLabel.trailingAnchor.constraint(equalTo: quoteLabel.leadingAnchor, constant: -8),
            williamLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 160),

            quoteLabel.topAnchor.constraint(equalTo: margin.topAnchor),
            quoteLabel.trailingAnchor.constraint(equalTo: margin.trailingAnchor),
            quoteLabelWidthConstraint
        ])
    }
    
    private func getLabels(text: String, color: UIColor) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 24)
        label.backgroundColor = color
        label.lineBreakMode = .byWordWrapping
        
        return label
    }
}

