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
    @IBOutlet weak var settingsSwitches: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func loadFlashcards(_ sender: UIButton) {
       let settings = [nameSwitch.isOn,
                       flagSwitch.isOn,
                       infoSwitch.isOn]
        performSegue(withIdentifier: "ShowCard", sender: settings)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! StateInfoVC
        nextVC.flashcardSettings = sender as? [Bool] ?? [false, false, false]
        nextVC.usingFlashcards = true
    }
    
    
    

    
    
    
    @IBAction func switches(_ sender: UISwitch) {
        if !nameSwitch.isOn && !flagSwitch.isOn && !infoSwitch.isOn {
            nameSwitch.setOn(true, animated: true)
        }
    }
    
    
}
