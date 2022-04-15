//
//  RootViewController.swift
//  Challenge-v2.2
//
//  Created by Dinmukhammed Sagyntkan on 14.04.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    private let greenPadding: CGFloat = 50.0
    private let redPadding: CGFloat = 25
    private let redHeight: CGFloat = 100
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.autoresizingMask = [.flexibleWidth,.flexibleTopMargin,.flexibleBottomMargin]
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.addSubview(redView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if greenView.superview == nil {
            view.addSubview(greenView)
            
            let containerHeight = view.frame.height
            let containerWidth = view.frame.width
            
            let greenHeight = containerHeight - greenPadding * 2
            let greenWidth = containerWidth - greenPadding * 2
            greenView.frame = CGRect(x: greenPadding, y: greenPadding, width: greenWidth, height: greenHeight)
            
            let redWidth = greenWidth - redPadding * 2
            let redY = (greenHeight - redHeight) / 2
            redView.frame = CGRect(x: redPadding, y: redY, width: redWidth, height: redHeight)
        }
    }
}
