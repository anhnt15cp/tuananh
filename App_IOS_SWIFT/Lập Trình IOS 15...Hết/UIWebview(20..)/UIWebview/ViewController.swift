//
//  ViewController.swift
//  UIWebview
//
//  Created by Tuấn Anh on 29/07/2022.
//

import UIKit
import WebKit
class ViewController: UIViewController , WKNavigationDelegate{
    @IBOutlet weak var myWebview: WKWebView!
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var nextbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myWebview.navigationDelegate = self
        let url = URL(string: "https://www.google.com.vn/?hl=vi")
        let request = URLRequest(url: url!)
        myWebview.load(request)
        
        ckeckbutton()
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
    ckeckbutton()}
    
    @IBAction func back_clicked(_ sender: UIButton) {
        myWebview.goBack()
        ckeckbutton()
    }
    @IBAction func next_clicked(_ sender: Any) {
        myWebview.goForward()
        ckeckbutton()
    }
    func ckeckbutton () {
        if myWebview.canGoBack  { backbutton.isEnabled = true
            }else {
                backbutton.isEnabled = false}
        
        if myWebview.canGoForward {
              nextbutton.isEnabled = true
            } else {
                nextbutton.isEnabled = false}
        }
            
    }
        
    



