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
        controller.delegate = self
        present(controller, animated: true)
    }
}

extension MainViewController: BulbDelegete {
    func toggleBulb(_ isOn: Bool) {
        lightIsOn = isOn
        if isOn {
            self.view.backgroundColor = .yellow
            bulbImageView.image = #imageLiteral(resourceName: "buldOn")
        } else {
            self.view.backgroundColor = .darkGray
            bulbImageView.image = #imageLiteral(resourceName: "bulbOff")
        }
    }
    
}

