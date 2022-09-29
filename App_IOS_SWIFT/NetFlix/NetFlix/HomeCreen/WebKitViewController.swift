//
//  WebKitViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 27/09/2022.
//

import UIKit
import WebKit
class WebKitViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.navigationDelegate = self
        let url = URL(string: "https://www.netflix.com/signup/registration")
        let request = URLRequest(url: url!)
        myWebView.load(request)
    }
    
    
}
