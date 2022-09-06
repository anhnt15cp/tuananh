//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Tuấn Anh on 06/09/2022.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var currentTime: UILabel!
    
    @IBOutlet weak var durationTime: UILabel!
    
    @IBOutlet weak var timeSlider: UISlider!
   
    @IBOutlet weak var playAudio: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        setupAudio()
    }
    func secondsToHoursMinutesSeconds (seconds : Double) -> (String) {
        let (hr,  minf) = modf (seconds / 3600)
        let (min, secf) = modf (60 * minf)
        return ("\(Int(hr)):\(Int(min)):\(Int(60 * secf))")
    }
    
func setupAudio() {
    do {
        try AVAudioSession.sharedInstance().setCategory(.playback)
        try AVAudioSession.sharedInstance().setActive(true)
        
        let path = Bundle.main.path(forResource: "1.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)

        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer?.prepareToPlay()
        audioPlayer?.delegate = self
        audioPlayer?.enableRate = true
        audioPlayer?.play()
        
        // setup UI
        currentTime.text = secondsToHoursMinutesSeconds(seconds: 0)
        durationTime.text = secondsToHoursMinutesSeconds(seconds: audioPlayer?.duration ?? 0)
        playAudio.setImage(UIImage(systemName: "play.fill"), for: .normal)
        timeSlider.minimumValue = 0
        timeSlider.maximumValue = Float(TimeInterval(audioPlayer?.duration ?? 0))
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.currentTime.text = self.secondsToHoursMinutesSeconds(seconds: self.audioPlayer?.currentTime ?? 0)
            self.timeSlider.value = Float(self.audioPlayer?.currentTime ?? 0)
        })
        
    } catch _ {
        print("Lỗi không phát được nhạc")
    }

}
    @IBAction func timerAudioSlider(_ sender: UISlider) {
        if let audioPlayer = audioPlayer {
            audioPlayer.currentTime = TimeInterval(Float(sender.value))
            currentTime.text = secondsToHoursMinutesSeconds(seconds: Double(sender.value))
        }
    }
    
    @IBAction func playerAudioButton(_ sender: UIButton) {
        if let audioPlayer = audioPlayer {
           if audioPlayer.isPlaying {
                audioPlayer.pause()
               playAudio.setImage(UIImage(systemName: "play.fill"), for: .normal)
            }else {
                audioPlayer.play()
                playAudio.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            }
        }else {
        setupAudio()
        }
    }
    
    
    
}
extension ViewController: AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        print(" ABC")
    }
}
