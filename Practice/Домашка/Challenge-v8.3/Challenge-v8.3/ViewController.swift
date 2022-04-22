//
//  ViewController.swift
//  Challenge-v8.3
//
//  Created by Dinmukhammed Sagyntkan on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var coverView: UIView!
    
    private let _switch: UISwitch = {
        let _switch = UISwitch()
        _switch.addTarget(self, action: #selector(showCode), for: .allEvents)
        return _switch
    }()
    
    private lazy var firstCodeLabel: UILabel = {
        setupLabels(text: "1A")
    }()
    
    private lazy var secondCodeLabel: UILabel = {
        setupLabels(text: "2BX")
    }()
    
    private lazy var thirdCodeLabel: UILabel = {
        setupLabels(text: "3Z")
    }()
    
    private let bannerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var labelsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [firstCodeLabel, secondCodeLabel, thirdCodeLabel])
        stackView.spacing = 16
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
   
        return stackView
    }()
    
    private lazy var switchLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [_switch, labelsStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        stackView.backgroundColor = .purple
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0)
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        switchLabelStackView.insertSubview(bannerView, belowSubview: labelsStackView)
        title = "Show Code"
        
        print(labelsStackView.subviews.count)
    }
    
    @objc private func showCode(_ sender: UISwitch) {
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.5, delay: 0, options: [], animations: {
            self.configureCover()
        }, completion: nil)
    }
    
    @objc private func configureCover() {
        coverView.alpha = _switch.isOn ? 0 : 1
    }
    
    private func setupView() {
        coverView = UIView()
        coverView.translatesAutoresizingMaskIntoConstraints = false
        coverView.backgroundColor = .yellow
        
        view.addSubview(switchLabelStackView)
        labelsStackView.insertSubview(coverView, at: 4)
        
        let viewMargin = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            switchLabelStackView.leadingAnchor.constraint(equalTo: viewMargin.leadingAnchor),
            switchLabelStackView.trailingAnchor.constraint(equalTo: viewMargin.trailingAnchor),
            switchLabelStackView.topAnchor.constraint(equalTo: viewMargin.topAnchor),
            
            coverView.leadingAnchor.constraint(equalTo: labelsStackView.leadingAnchor),
            coverView.topAnchor.constraint(equalTo: labelsStackView.topAnchor),
            coverView.trailingAnchor.constraint(equalTo: labelsStackView.trailingAnchor),
            coverView.bottomAnchor.constraint(equalTo: labelsStackView.bottomAnchor)
        ])
    }
    
    private func setupLabels(text: String) -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 40)
        return label
    }
}

