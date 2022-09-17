//
//  manHinh3.swift
//  a
//
//  Created by Tuấn Anh on 11/09/2022.
//

import UIKit
import AVFoundation
class manHinh3: UIViewController, AVAudioPlayerDelegate {
    
    var playerAudio = AVAudioPlayer()
    var handleBack : (()->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        acctionAudio()
        avc()
        
    }
    func avc() {
        DispatchQueue.main.asyncAfter(deadline: .now()+20, qos: .default, flags: .assignCurrentContext) {
            self.playerAudio.stop()
        }
        let queue = DispatchQueue(label: "LoadAudio", qos: .userInteractive, attributes: .concurrent, autoreleaseFrequency: .inherit, target: .main)
        queue.async {
            self.acctionAudio()
        }
        
    }
    func acctionAudio() {
        
        do {
            try  AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setActive(true)
            guard let path = Bundle.main.path(forResource: "123", ofType: "mp3") else { return print("Lỗi") }
            let url = URL(fileURLWithPath: path)
            
            playerAudio = try! AVAudioPlayer(contentsOf: url)
            
            playerAudio.prepareToPlay()
            playerAudio.enableRate = true
            playerAudio.delegate = self
            playerAudio.play()
        } catch _ {
            print("Không load được nhạc")
        }
    
    
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        dismiss(animated: true)
        self.playerAudio.stop()
        self.handleBack?()
    }
    

}
