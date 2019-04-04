//
//  MemoryVC.swift
//  Fifty States
//
//  Created by Eric Snow on 3/22/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit

class MemoryVC: UIViewController {
    
    @IBOutlet var flags: [UIButton]!
    
    var currentStates = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shuffleStates()
    }
    
    
    func shuffleStates() {
        for _ in 0...4 {
            let stateIndexNumber = Int.random(in: 0...49)
            currentStates.append(stateIndexNumber)
        }
        for (arrayIndex, currentState) in currentStates.enumerated() {
            let flagName = stateDetails[currentState].name
            let flagImage = UIImage.init(named: flagName)
            flags[arrayIndex].setBackgroundImage(flagImage, for: .normal)
        }
        print(currentStates)
    } 
    
    
    @IBAction func flipFlag(_ sender: UIButton) {
        let selectedStateID = currentStates[sender.tag]
        let selectedStateName = selectedStateID
        let selectedFlagImage = UIImage.init(named: "selectedStateName")
        sender.setBackgroundImage(selectedFlagImage, for: .normal)
        
    }
    
    
    @IBAction func showFlag(_ sender: UIButton) {
        
    }
    

    @IBAction func newStates(_ sender: UIButton) {
        shuffleStates()
    }
    
    
    
}
