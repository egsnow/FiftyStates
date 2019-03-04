//
//  SettingsVC.swift
//  Fifty States
//
//  Created by Eric Snow on 3/2/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    
    @IBOutlet weak var nameSwitch: UISwitch!
    @IBOutlet weak var flagSwitch: UISwitch!
    @IBOutlet weak var infoSwitch: UISwitch!
    
    var name = true
    var flag = true
    var info = true
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameSwitch.isOn = name
        flagSwitch.isOn = flag
        infoSwitch.isOn = info
        
    }
    

    
    
    @IBAction func loadFlashcards(_ sender: UIButton) {
        if nameSwitch.isOn == true {
            print("show name")
        } else if nameSwitch.isOn == false {
            print("don't show name")
        }
        if flagSwitch.isOn == true {
            print("show flag")
        } else if flagSwitch.isOn == false {
            print("don't show flag")
        }
        if infoSwitch.isOn == true {
            print("show info")
        } else if infoSwitch.isOn == false {
            print("don't show info")
        }
        performSegue(withIdentifier: "ShowCard", sender: Any)
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! StateInfoVC
        controller.nameOfState = sender as? Int
    }
    
    

}
