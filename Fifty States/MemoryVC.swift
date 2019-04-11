//
//  MemoryVC.swift
//  Fifty States
//
//  Created by Eric Snow on 3/22/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit

class MemoryVC: UIViewController, MemoryGameDelegate {
    
    @IBOutlet var flags: [UIButton]!
    
    var game: MemoryGame?
    var currentStatesArray: [MemoryGameDelegate.currentStates]
    let defaultImage = UIImage.init(named: "american_flag")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = MemoryGame(numberOfCards: flags.count)
        shuffleStates()
    }
    
    func shuffleStates() {
        for i in 0...9 {
            flags[i].setBackgroundImage(defaultImage, for: .normal)
        }
        for _ in 0...9 {
            let stateIndexNumber = Int.random(in: 0...49)
            currentStatesArray.append(stateIndexNumber)
        }
    }
    
    @IBAction func flipFlag(_ sender: UIButton) {
        let selectedStateID = currentStatesArray[sender.tag]
        let selectedStateName = stateDetails[selectedStateID].name
        print(selectedStateName)
        let selectedFlagImage = UIImage.init(named: selectedStateName)
        sender.setBackgroundImage(selectedFlagImage, for: .normal)
    }
    
    @IBAction func showFlag(_ sender: UIButton) {
        
    }
    
    @IBAction func newStates(_ sender: UIButton) {
        shuffleStates()
    }
}
