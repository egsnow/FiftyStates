//
//  MemoryVC.swift
//  Fifty States
//
//  Created by Eric Snow on 3/21/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit

class MemoryVC: UIViewController {
    
    
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var flowerLabel: UILabel!
    @IBOutlet weak var birdLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    

    var stateIndexNumber: Int?
    var bird = ""
    var flower = ""
    var capital = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    func nextState() {
        stateIndexNumber = Int.random(in: 0...49)
        capitalLabel.text = stateDetails[stateIndexNumber!].capital
        birdLabel.text = stateDetails[stateIndexNumber!].bird
        flowerLabel.text = stateDetails[stateIndexNumber!].flower
    }
    
    
    
    
    @IBAction func selectAnswerButtons(_ sender: UIButton) {
        
    }
    



}
