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

    var thisState = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        var urlString = "https://en.wikipedia.org/wiki/" + thisState
        urlString = urlString.replacingOccurrences(of: " ", with: "_")
        if let url = URL(string: urlString) {
            webView.load(URLRequest(url: url))
        }
    }
}
