//
//  MemoryCard.swift
//  Fifty States
//
//  Created by Eric Snow on 4/5/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import Foundation


struct MemoryCard {
    
    
    var stateID: Int
    var isMatched = false {
        didSet {
            print ("is matched = \(self.isMatched)")
        }
    }
    


    init() {
        stateID = Int.random(in: 0...49)
    }
    
    
    
}
