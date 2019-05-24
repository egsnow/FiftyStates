//
//  ViewController.swift
//  Fifty States
//
//  Created by Eric Snow on 1/24/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit

class HomePageVC: UIViewController {

    @IBOutlet var logoLabel: UILabel!
    @IBOutlet var flagMap: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fifty States"
        UIView.animate(withDuration: TimeInterval(1.0), delay: 0, options: [.repeat, .autoreverse, .allowUserInteraction], animations: {
            self.logoLabel.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }, completion: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }





}

