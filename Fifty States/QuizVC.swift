//
//  QuizVC.swift
//  Fifty States
//
//  Created by Eric Snow on 3/21/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit

class QuizVC: UIViewController {
    
    
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

        nextState()
    }
    
    
    func nextState() {
        stateIndexNumber = Int.random(in: 0...49)
        capitalLabel.text = stateDetails[stateIndexNumber!].capital
        birdLabel.text = stateDetails[stateIndexNumber!].bird
        flowerLabel.text = stateDetails[stateIndexNumber!].flower
        let flagImage = UIImage.init(named: stateDetails[stateIndexNumber!].name)
        print(stateDetails[stateIndexNumber!].name)
        answerButtons[0].setBackgroundImage(flagImage, for: .normal)
        
        

    }
    
    
    
    
    @IBAction func selectAnswerButtons(_ sender: UIButton) {
        
    }
    



}
