//
//  WebHelpViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 28/09/2022.
//

import UIKit
import WebKit
class WebHelpViewController: UIViewController, WKNavigationDelegate{

    @IBOutlet weak var myWebKit: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebKit.navigationDelegate = self
        let url = URL(string: "https://help.netflix.com/vi")
        let request = URLRequest(url: url!)
        myWebKit.load(request)
        
      
    }
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

   

}
