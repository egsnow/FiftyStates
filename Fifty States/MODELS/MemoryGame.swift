//
//  MemoryGame.swift
//  Fifty States
//
//  Created by Eric Snow on 4/5/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import Foundation
import AVFoundation

struct MemoryGame {
    
    
    var cards = [MemoryCard]()
    private(set) var firstCardIndexSelected: Int?
    var currentStates = [Int]()
    var selectedStateIDs = [Int]()
    let synthesizer = AVSpeechSynthesizer()
    var isOVer: Bool {
        get {
            for card in cards {
                if !card.isMatched {
                    print("game not over")
                    return false
                }
            }
            print("game over")
            return true
        }
    }
    
    init(numberOfCards: Int) {
        dealCards(numberOfCards: numberOfCards)
    }
    
    
    mutating func shuffleCards() {
        cards.shuffle()
    }
    
    
    mutating func dealCards(numberOfCards: Int) {
        let numberOfMatches = numberOfCards/2
        cards.removeAll()
        for _ in 0..<numberOfMatches {
            var newCard: MemoryCard
            repeat {
                newCard = MemoryCard()
            } while (cards.contains(where: { $0.stateID == newCard.stateID }))
            cards.append(newCard)
            cards.append(newCard)
        }
//        shuffleCards()
        printCards()
    }
    
    
    func printCards() {
        for card in cards {
            print(stateDetails[card.stateID].name)
        }
        print("\n\n\n\n\n\n\n")
    }
    
    
    mutating func flipCard(cardNumber: Int) {
        let selectedStateID = cards[cardNumber].stateID
        let selectedStateName = stateDetails[selectedStateID].name
        synthesizer.stopSpeaking(at: .immediate)
        let utterance = AVSpeechUtterance(string: selectedStateName)
        synthesizer.speak(utterance)
        selectedStateIDs.append(selectedStateID)
        if let firstCardIndex = firstCardIndexSelected {
            let secondCardIndex = cardNumber
            if cards[firstCardIndex].stateID == cards[secondCardIndex].stateID {
                cards[firstCardIndex].isMatched = true
                cards[secondCardIndex].isMatched = true
                if isOVer {
                    playSound("win")
                }
            } else if cards[firstCardIndex].stateID != cards[secondCardIndex].stateID {
                cards[firstCardIndex].isMatched = false
                cards[secondCardIndex].isMatched = false
            }
        } else {
        }
        firstCardIndexSelected = cardNumber
    }
    
    
    
    
}
