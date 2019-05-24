//
//  MemoryVC.swift
//  Fifty States
//
//  Created by Eric Snow on 3/22/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit

class MemoryVC: UIViewController {
    
    
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet var dealCardsButton: UIButton!
    @IBOutlet var flagViews: [UIView]!
    
  
    var game: MemoryGame!
    let defaultImage = UIImage.init(named: "flagbacks1")
    var selectedCardsIndexes = [Int]()
    var gamePausedForDelay = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Memory Game"
        setButtonTags()
        game = MemoryGame(numberOfCards: cardButtons.count)
        showBacks()
    }
    
    
    func showBacks() {
        for i in 0..<cardButtons.count {
            cardButtons[i].setBackgroundImage(defaultImage, for: .normal)
        }
    }
    
    
    func setButtonTags() {
        for (index, button) in cardButtons.enumerated() {
            button.tag = index
        }
    }
    
    
    @IBAction func dealNewCards(_ sender: UIButton) {
        selectedCardsIndexes.removeAll()
        for button in cardButtons {
            game.cards[button.tag].isMatched = false
            cardButtons[button.tag].isHidden = false
        }
        showBacks()
        game.dealCards(numberOfCards: cardButtons.count)
    }
    
    
    @IBAction func flipCard(_ sender: UIButton) {
        if gamePausedForDelay {
            return
        }
        if !selectedCardsIndexes.isEmpty && selectedCardsIndexes[0] == sender.tag {
            return
        }
        game.flipCard(cardNumber: sender.tag)
        let cardLocation = sender.tag
        selectedCardsIndexes.append(cardLocation)
        let selectedStateID = game.cards[cardLocation].stateID
        let selectedStateName = stateDetails[selectedStateID].name
        let selectedFlagImage = UIImage.init(named: selectedStateName)
        sender.setBackgroundImage(selectedFlagImage, for: .normal)
        playSound("card-flip")
        if selectedCardsIndexes.count % 2 == 0 {
            gamePausedForDelay = true
            afterDelay(0.8) {
                self.gamePausedForDelay = false
                if self.game.cards[cardLocation].isMatched == true {
                        for cardIndex in self.selectedCardsIndexes {
                            self.cardButtons[cardIndex].isHidden = true
                            if self.game.isOver {
                                playSound("win")
                            } else {
                                playSound("correct")
                            }
                        }
                    } else if self.game.cards[cardLocation].isMatched == false {
                        playSound("wrong")
                        for cardIndex in self.selectedCardsIndexes {
                        self.cardButtons[cardIndex].setBackgroundImage(self.defaultImage, for: .normal)
                        }
                    }
                    self.selectedCardsIndexes.removeAll()
                }
            } 
        }
        
    
        func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
        }
        
        
    func hideFlag() {
        for view in flagViews {
            view.layer.cornerRadius = 10
            view.layer.masksToBounds = true
            view.layer.borderWidth = 3
            view.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    
}



