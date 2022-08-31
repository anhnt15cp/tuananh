//
//  ViewController.swift
//  DemoGesture
//
//  Created by Tuấn Anh on 26/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contentImageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTapGesture()
        setupPanGesture()
        setupPinchGesture()
        setupRotationGesture()
        setupLongPress()
        setupDownSwipe()
    }
    // MARK 0 : swipe : trượt trên UI
    func setupDownSwipe() {
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(acctionSwipeDown))
        downSwipe.direction = .down // hướng trượt
        contentImageview.addGestureRecognizer(downSwipe)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(acctionSwipeRight))
        rightSwipe.direction = .right // hướng trượt
        contentImageview.addGestureRecognizer(rightSwipe)
    }
    @objc func acctionSwipeDown() {
        print("SwipedDown")
    }
    @objc func acctionSwipeRight() {
        print("RightDown")
    }
    
    
    // MARK1 : LongPress : Giữ 1s
    func setupLongPress() {
        contentImageview.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(acctionLongPress)))
    }
    @objc func acctionLongPress() {
        print("LongPressImage")
    }
    
    
    // MARK2 : TapGesture : Hành động ấn vào 1 UI
    func setupTapGesture() {
        contentImageview.isUserInteractionEnabled = true // cho phép tương tác người dùng
        contentImageview.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(acctionTap))) // gán hành động cho UI
    }
    
    // TapGesture
    @objc func acctionTap() {
        print("Tapped image view")
    }
    
    
    //MARK3 : PanGesture : Di chuyển 1 UI
    func setupPanGesture() {
        contentImageview.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(acctionPan(sender:))))
    }
    // PanGesture
    @objc func acctionPan(sender: UIPanGestureRecognizer) {
        let poin = sender.location(in: view) // location : lấy ra vị trí người dùng kéo trên màn hình tính trong hệ tọa độ của VIEW ( view truyền vào in )
        contentImageview.center = poin // Gán trung tâm của ảnh là nơi người dùng chạm vào
    }
    
    
    // MARK4 : PinchGesture : Phóng to thu nhỏ 1 UI // dùng thuộc tính CGA
    func setupPinchGesture() {
        contentImageview.addGestureRecognizer(UIPinchGestureRecognizer(target: self, action: #selector(acctionPinch(sender:))))
    }
    @objc func acctionPinch( sender: UIPinchGestureRecognizer) {
        contentImageview.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
        print(sender.scale)
        
        
    }
    // MARK5 : RotationGesture : Xoay 1 UI // dùng thuộc tính CGA
    func setupRotationGesture() {
        contentImageview.addGestureRecognizer(UIRotationGestureRecognizer(target: self, action: #selector(acctionRotation(sender:))))
    }
    @objc func acctionRotation(sender: UIRotationGestureRecognizer) {
        
        contentImageview.transform = CGAffineTransform(rotationAngle: sender.rotation)
        print(sender.rotation)
    }
    
}

