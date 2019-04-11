//
//  MemoryGame.swift
//  Fifty States
//
//  Created by Eric Snow on 4/5/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import Foundation

protocol MemoryGameDelegate {
    
}

struct MemoryGame {
    
    var delegate:  MemoryGameDelegate?
    
    var cards = [MemoryCard]()
    var currentStates = [Int]()
    

    
    
    
    
    
    
    init(numberOfCards: Int) {
        for _ in 0..<numberOfCards {
            let newCard = MemoryCard(stateID: 0)
            cards.append(newCard)
            
        }
    }
    
}
