//
//  RootViewController.swift
//  Challenge-v2.3
//
//  Created by Dinmukhammed Sagyntkan on 15.04.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    override func loadView() {
        let rootView = RGBView()
        rootView.backgroundColor = .white
        view = rootView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
