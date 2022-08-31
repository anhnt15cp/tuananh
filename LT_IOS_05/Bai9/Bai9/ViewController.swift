//
//  ViewController.swift
//  Bai9
//
//  Created by Tuấn Anh on 24/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ActivityView: UIActivityIndicatorView!
    
    @IBOutlet weak var ProgressView: UIProgressView!
    
    @IBOutlet weak var testSwitch: UISwitch!
    @IBOutlet weak var Slider: UISlider!
    
    // Timer là kiểu vòng lặp có thể set thời gian để lặp lại. vòng lặp mới
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        stopLoading()
        setupTimer()
        // Gọi stoploading sau khi activityView chạy đc 5s
        DispatchQueue.main.asyncAfter(deadline: .now()+5) {
            self.stopLoading()
        }
    }
    func setupTimer() {
        // Sử dụng Timer
        // TimeInterVal : thời gian để lặp lại vòng lặp mới
        // repeats : true/false : có lặp lại hay không
        // block : Viết khối câu lệnh trong block
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _ in
            self.ProgressView.progress += 0.005
            if self.ProgressView.progress >= 1 {
                self.timer?.invalidate() // dừng timer lại
            }
            
        })
    }
    
    func setupUI() {
        //sét style cho activity
        ActivityView.style = .large
        // sét màu cho activity
        ActivityView.color = .orange
        // Ẩn activity khi dừng load
        ActivityView.hidesWhenStopped = true
        
        // MARK : Progress
        ProgressView.progress = 0 // sét tiến độ hoàn thanh
        ProgressView.progressTintColor = .brown // sét màu thanh tiến độ ( thanh bên trái
        ProgressView.trackTintColor = .blue // sét màu của (thanh bên phải)
        //        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
        //            self.ProgressView.progress += 0.1
        //        }
        
        // MARK : Slider
        Slider.minimumTrackTintColor = .green // sét màu thanh bên trái
        Slider.maximumTrackTintColor = .orange // sét màu thanh bên phải
        Slider.maximumValue = 100 // sét giá trị lớn nhất của slider
        Slider.minimumValue = 10 // sét giá trị nhỏ nhất của slider
        Slider.value =  20 // sét giá trị hiện tại của slider
        
        // MARK : Switch
        testSwitch.onTintColor = .orange // màu của phần bên trái khi bật
        testSwitch.thumbTintColor = .red // màu của nút tròn
    }
    func starLoading() {
        ActivityView.startAnimating()
    }
    func stopLoading() {
        ActivityView.stopAnimating()
    }
    
    @IBAction func changeValueSlider(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func changeState(_ sender: UISwitch) {
        print(sender.isOn)// kiểm tra trạng thái hiện tại của switch
        print(testSwitch.isOn)
    }
    
}

