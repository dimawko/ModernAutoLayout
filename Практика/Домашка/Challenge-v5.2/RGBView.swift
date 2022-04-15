//
//  RGBView.swift
//  Challenge-v5.2
//
//  Created by Dinmukhammed Sagyntkan on 15.04.2022.
//

import UIKit

final class RGBView: UIView {
    
    private let spacing: CGFloat = 25.0
    
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
        addSubview(redView)
        addSubview(blueView)
        
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: spacing),
            blueView.topAnchor.constraint(equalTo: topAnchor, constant: spacing),
            blueView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -spacing),
            blueView.trailingAnchor.constraint(equalTo: redView.leadingAnchor, constant: spacing),
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            
            redView.topAnchor.constraint(equalTo: topAnchor, constant: spacing),
            redView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: spacing),
            redView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -spacing)
        ])
    }
}
