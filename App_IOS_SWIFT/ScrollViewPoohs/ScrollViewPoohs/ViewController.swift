//
//  ViewController.swift
//  ScrollViewPoohs
//
//  Created by Tuấn Anh on 18/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myScrollView: UIScrollView!
    
    @IBOutlet weak var myPageControl: UIPageControl!
    
    let poohsData = [poohs(imagePooh: "1", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                     poohs(imagePooh: "2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                     poohs(imagePooh: "3", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                     poohs(imagePooh: "4", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                     poohs(imagePooh: "5", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ")]
    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.frame = CGRect(x: 0,
                                    y: 0,
                                    width: view.bounds.width,
                                    height: view.bounds.height)
        myScrollView.isPagingEnabled = true
        myScrollView.showsHorizontalScrollIndicator = true
        myScrollView.backgroundColor = .red
        myScrollView.delegate = self
        
        myPageControl.currentPage = 0
        myPageControl.contentMode = .center
        myPageControl.numberOfPages = poohsData.count
        myPageControl.pageIndicatorTintColor = .blue
        myPageControl.frame = CGRect(x: 0,
                                     y: 0,
                                     width: 200,
                                     height: 100)
        myPageControl.center = CGPoint(x: view.center.x,
                                       y: view.bounds.maxY-100)
        setupImagePoohs(pooh: poohsData)
        view.addSubview(myScrollView)
        view.bringSubviewToFront(myPageControl)
        
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
//        setupImagePoohs(pooh: poohsData)
    }
    
    func setupImagePoohs(pooh: [poohs]) {
        for (index,item) in pooh.enumerated() {
            let contentScroll = Bundle.main.loadNibNamed("ContentView", owner: self, options: nil)?.first as! ContentView
            contentScroll.imagePooh.image = UIImage(named: item.imagePooh)
            contentScroll.myTextField.text = item.description
            
            contentScroll.frame = CGRect(x: 0, y:  myScrollView.bounds.width * CGFloat((index)), width: myScrollView.bounds.size.width , height: myScrollView.bounds.size.height)
            
            myScrollView.addSubview(contentScroll)
        }
        myScrollView.contentSize = CGSize(width: myScrollView.bounds.width, height: myScrollView.bounds.height * CGFloat((pooh.count)))

    }

    
    
}
extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.bounds.width)
        myPageControl.currentPage = Int(pageIndex)
    }
}

