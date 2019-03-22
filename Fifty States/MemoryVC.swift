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
    var stateIndexNumber: Int?

    
    
    
    func shuffleStates() {
        stateIndexNumber = Int.random(in: 0...49)
        currentStates.append(stateIndexNumber!)
        let flagImage0 = UIImage.init(named: stateDetails[stateIndexNumber!].name)
        print(stateDetails[stateIndexNumber!].name)
        flags[0].setBackgroundImage(flagImage0, for: .normal)
        
        stateIndexNumber = Int.random(in: 0...49)
        currentStates.append(stateIndexNumber!)
        let flagImage1 = UIImage.init(named: stateDetails[stateIndexNumber!].name)
        print(stateDetails[stateIndexNumber!].name)
        flags[1].setBackgroundImage(flagImage1, for: .normal)
        
        stateIndexNumber = Int.random(in: 0...49)
        currentStates.append(stateIndexNumber!)
        let flagImage2 = UIImage.init(named: stateDetails[stateIndexNumber!].name)
        print(stateDetails[stateIndexNumber!].name)
        flags[2].setBackgroundImage(flagImage2, for: .normal)
        
        stateIndexNumber = Int.random(in: 0...49)
        currentStates.append(stateIndexNumber!)
        let flagImage3 = UIImage.init(named: stateDetails[stateIndexNumber!].name)
        print(stateDetails[stateIndexNumber!].name)
        flags[3].setBackgroundImage(flagImage3, for: .normal)
        
        stateIndexNumber = Int.random(in: 0...49)
        currentStates.append(stateIndexNumber!)
        let flagImage4 = UIImage.init(named: stateDetails[stateIndexNumber!].name)
        print(stateDetails[stateIndexNumber!].name)
        flags[4].setBackgroundImage(flagImage4, for: .normal)

        
    }
    
    
    
    
    @IBAction func showFlag(_ sender: UIButton) {
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        shuffleStates()
    }
    


    
}
