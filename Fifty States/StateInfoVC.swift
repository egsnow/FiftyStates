//
//  StateInfoVC.swift
//  Fifty States
//
//  Created by Eric Snow on 1/24/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit


class StateInfoVC: UIViewController {

    
    @IBOutlet weak var stateName: UILabel!
    @IBOutlet weak var stateImage: UIImageView!
    @IBOutlet weak var stateInfo: UILabel!
    
    
    var nameOfState: String?

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        stateName.text = nameOfState
        
        
        print(nameOfState)

    }
    

    
    
    
   
    
    
    
    
    


}
