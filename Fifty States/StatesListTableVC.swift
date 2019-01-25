//
//  StatesListTableVC.swift
//  Fifty States
//
//  Created by Eric Snow on 1/24/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit

class StatesListTableVC: UITableViewController {

    
    
    let stateAbbreviations = ["AL", "AK", "AR", "AZ", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MI", "MN", "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VT", "WA", "WI", "WV", "WY"]
    
    
    
    let cellIdentifier = "StateCell"
    
    var stateSelected = ""

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

    }


    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stateAbbreviations.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = stateAbbreviations[indexPath.row]
        
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        stateSelected = stateAbbreviations[indexPath.row]
        performSegue(withIdentifier: "ShowState", sender: nil)

    }
    
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowState" {
            let controller = segue.destination as! StateInfoVC
            controller.nameOfState = stateSelected
        }
    
    }




}
