//
//  RGBView.swift
//  Challenge-v6.1
//
//  Created by Dinmukhammed Sagyntkan on 16.04.2022.
//

import UIKit

final class RGBView: UIView {
    
    private let internalPadding: CGFloat = 25
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        addSubview(blueView)
        addSubview(redView)
        
        directionalLayoutMargins = NSDirectionalEdgeInsets(top: internalPadding, leading: internalPadding, bottom: internalPadding, trailing: internalPadding)
        
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            blueView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            blueView.trailingAnchor.constraint(equalTo: redView.leadingAnchor, constant: -25),
            blueView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
          
            redView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            redView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            redView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor)
        ])
    }
}
