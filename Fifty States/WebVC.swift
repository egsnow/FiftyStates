//
//  WebVC.swift
//  Fifty States
//
//  Created by Eric Snow on 2/1/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit
import WebKit

class WebVC: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!

    var stateName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "State Wiki"
        var urlString = "https://en.wikipedia.org/wiki/" + stateName
        switch stateName {
        case "Washington":
            urlString += "_(state)"
        case "Georgia":
            urlString += "_(U.S._state)"
        case "New York":
            urlString += "_(state)"
        default:
            urlString += ""
        }
        view.addSubview(webView)
        urlString = urlString.replacingOccurrences(of: " ", with: "_")
        if let url = URL(string: urlString) {
            webView.load(URLRequest(url: url))
        }
    }
}
