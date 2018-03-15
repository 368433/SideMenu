//
//  SecondViewController.swift
//  SideMenuExample
//
//  Created by kukushi on 21/02/2018.
//  Copyright © 2018 kukushi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Work With Other"
    }
    
    
    @IBAction func pushViewControllerButtonDiidClicked(_ sender: Any) {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .white
        navigationController?.pushViewController(viewController, animated: true)
    }
    

    @IBAction func menuButtonDidClicked(_ sender: Any) {
        sm_sideMenuController?.revealMenu()
    }
    
    @IBAction func randomButtonDidClicked(_ sender: Any) {
        textLabel.text = "\(arc4random_uniform(100))"
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }

}
