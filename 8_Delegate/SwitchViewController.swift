//
//  SwitchViewController.swift
//  8_Delegate
//
//  Created by apple on 19.04.2023.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var switchView: UISwitch!
    var switchIsOn: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchView.setOn(switchIsOn, animated: true)
    }
    

    @IBAction func switchToggled(_ sender: UISwitch) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.dismiss(animated: true)
        }
    }
}
