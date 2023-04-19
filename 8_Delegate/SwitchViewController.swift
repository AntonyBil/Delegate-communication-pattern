//
//  SwitchViewController.swift
//  8_Delegate
//
//  Created by apple on 19.04.2023.
//

import UIKit

//1 like a massenger
protocol BulbDelegete {
    //2 massege
    func toggleBulb(_ isOn: Bool)
}

class SwitchViewController: UIViewController {

    @IBOutlet weak var switchView: UISwitch!
    var switchIsOn: Bool!
    //3
    var delegate: BulbDelegete!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchView.setOn(switchIsOn, animated: true)
    }
    

    @IBAction func switchToggled(_ sender: UISwitch) {
        //4
        delegate.toggleBulb(sender.isOn)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.dismiss(animated: true)
        }
    }
}
