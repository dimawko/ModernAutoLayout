//
//  TwoViews.swift
//  Challenge-v5.1
//
//  Created by Dinmukhammed Sagyntkan on 15.04.2022.
//

import UIKit

final class TwoViews: UIView {
    
    private let padding: CGFloat = 50
    private let spacing: CGFloat = 25
    
    private let greenView: UIView = {
        let greenView = UIView()
        greenView.backgroundColor = .green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        return greenView
    }()
    
    private let redView: UIView = {
        let redView = UIView()
        redView.backgroundColor = .red
        redView.translatesAutoresizingMaskIntoConstraints = false
        return redView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        addSubview(greenView)
        greenView.addSubview(redView)
        
        NSLayoutConstraint.activate([
            greenView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            greenView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            greenView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            greenView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
            
            redView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: spacing),
            redView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -spacing),
            redView.centerYAnchor.constraint(equalTo: greenView.centerYAnchor),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.2)
        ])
    }
}
