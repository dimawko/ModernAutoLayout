//
//  RGBView.swift
//  Challenge-v2.3
//
//  Created by Dinmukhammed Sagyntkan on 15.04.2022.
//

import UIKit

@IBDesignable
final class RGBView: UIView {
    
    @IBInspectable private var padding: CGFloat = 20 {
        didSet {
            setNeedsLayout()
        }
    }
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
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
        addSubview(greenView)
        addSubview(blueView)
    }
    
    override func layoutSubviews() {
        let containerWidth = bounds.width
        let containerHeight = bounds.height
        
        let numberOfItems: CGFloat = 3
        
        let itemWidth = containerWidth
        let itemHeight = (containerHeight - padding) / numberOfItems
        
        redView.frame = CGRect(x: 0, y: 0, width: itemWidth, height: itemHeight)
        
        greenView.frame = CGRect(x: 0, y: itemHeight + padding, width: itemWidth, height: itemHeight)
        blueView.frame = CGRect(x: 0, y: (itemHeight + padding) * 2, width: itemWidth, height: itemHeight)
    }
}
