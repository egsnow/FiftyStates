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
    
    var nameOfState: Int?
    var birdImageName = ""
    var flowerImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let nameOfState = nameOfState {
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! WebVC
        if let thisState = nameOfState {
            controller.thisState = stateDetails[nameOfState!].name
        }
    }
}
