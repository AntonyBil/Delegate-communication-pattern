//
//  ViewController.swift
//  8_Delegate
//
//  Created by apple on 19.04.2023.
//

import UIKit



class MainViewController: UIViewController {
    
//MARK: - IBOutlets and properties
    @IBOutlet weak var bulbImageView: UIImageView!
    var lightIsOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTapGestureRec()
    }
    
    //MARK: - IBActions and methods
    func setupTapGestureRec() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(goToSwitchView))
        bulbImageView.addGestureRecognizer(tap)
        bulbImageView.isUserInteractionEnabled = true
    }

    @objc func goToSwitchView() {
        let controller = storyboard?.instantiateViewController(identifier: "SwitchViewController" ) as! SwitchViewController
        controller.switchIsOn = lightIsOn
        present(controller, animated: true)
    }
}

