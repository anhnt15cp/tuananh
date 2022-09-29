//
//  GetPassword2ViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 28/09/2022.
//

import UIKit
import WebKit
class GetPassword2ViewController: UIViewController,WKNavigationDelegate {
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
let url = URL(string: "https://www.netflix.com/vn/LoginHelp")
      
        let request = URLRequest(url: url!)
        myWebView.load(request)
    }

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
}
