//
//  ChattingViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 28/09/2022.
//

import UIKit
import WebKit
class ChattingViewController: UIViewController {
    @IBOutlet weak var myWebview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
let url = URL(string: "https://help.netflix.com/vi/interface/chat?mobile=true&netflixsource=iosapp")
        let request = URLRequest(url: url!)
        myWebview.load(request)
    }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    


}
