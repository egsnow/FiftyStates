//
//  StateInfoVC.swift
//  Fifty States
//
//  Created by Eric Snow on 1/24/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit


class StateInfoVC: UIViewController {
    
    
    @IBOutlet weak var stateNameLabel: UILabel!
    @IBOutlet weak var stateAbbreviationLabel: UILabel!
    @IBOutlet weak var stateFlagImage: UIImageView!
    @IBOutlet weak var stateCapitalLabel: UILabel!
    @IBOutlet weak var stateBirdLabel: UILabel!
    @IBOutlet weak var stateBirdImage: UIImageView!
    @IBOutlet weak var stateFlowerImage: UIImageView!
    @IBOutlet weak var stateFlowerLabel: UILabel!

    
    var stateIndexNumber: Int?
    var birdImageName = ""
    var flowerImageName = ""
    var flashcardSettings = [true, true, true]
    var usingFlashcards = false


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapAction)))
        adjustFlashcardSettings()
        shuffleState()
        updateState()
        
    }
    
    
    func adjustFlashcardSettings(){
        if flashcardSettings[0] == true {
            stateNameLabel.isHidden = false
        } else {
            stateNameLabel.isHidden = true
        }
        if flashcardSettings[1] == true {
            stateFlagImage.isHidden = false
        } else {
            stateFlagImage.isHidden = true
        }
        if flashcardSettings[2] == true {
            stateCapitalLabel.isHidden = false
            stateAbbreviationLabel.isHidden = false
            stateBirdLabel.isHidden = false
            stateFlowerLabel.isHidden = false
        } else {
            stateCapitalLabel.isHidden = true
            stateAbbreviationLabel.isHidden = true
            stateBirdLabel.isHidden = true
            stateFlowerLabel.isHidden = true
        }
    }
    
    
    func updateState() {
        if let nameOfState = stateIndexNumber {
            birdImageName = stateDetails[nameOfState].abbreviation + "bird"
            flowerImageName = stateDetails[nameOfState].abbreviation + "flower"
            stateNameLabel.text = stateDetails[nameOfState].name
            stateAbbreviationLabel.text = stateDetails[nameOfState].abbreviation
            stateFlagImage.image = UIImage.init(named: stateDetails[nameOfState].name)
            stateCapitalLabel.text = stateDetails[nameOfState].capital
            stateBirdLabel.text = stateDetails[nameOfState].bird
            stateBirdImage.image = UIImage.init(named: birdImageName)
            stateFlowerImage.image = UIImage.init(named: flowerImageName)
            stateFlowerLabel.text = stateDetails[nameOfState].flower
        }
    }
    
    
    func shuffleState() {
        if usingFlashcards == true {
            stateIndexNumber = Int.random(in: 0...49)
        }
    }
    
    
    @objc func tapAction(){
        if usingFlashcards == true {
            stateIndexNumber = Int.random(in: 0...49)
            if stateNameLabel.isHidden || stateFlagImage.isHidden || stateCapitalLabel.isHidden == true {
                stateNameLabel.isHidden = false
                stateFlagImage.isHidden = false
                stateCapitalLabel.isHidden = false
                stateAbbreviationLabel.isHidden = false
                stateBirdLabel.isHidden = false
                stateFlowerLabel.isHidden = false
            } else {
                adjustFlashcardSettings()
                stateIndexNumber = Int.random(in: 0...49)
                updateState()
            }
        }else{
            print("I'm not using flashcards")
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! WebVC
        if let nameOfState = stateIndexNumber {
            controller.stateName = stateDetails[nameOfState].name
        }
    }
}


