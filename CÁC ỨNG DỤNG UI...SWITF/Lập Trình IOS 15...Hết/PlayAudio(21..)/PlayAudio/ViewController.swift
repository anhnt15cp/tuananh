//
//  ViewController.swift
//  PlayAudio
//
//  Created by Tuấn Anh on 29/07/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let path = Bundle.main.path(forResource: "1234.mp3", ofType: nil)else {
            return
        }
        guard let url = URL(string: path) else {
        return}
        do {player = try AVAudioPlayer(contentsOf: url)}
        catch {//errow}
                
                
                
    }


}
    @IBAction func star(_ sender: UIButton) {
        player.play()
    }
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    @IBAction func stop(_ sender: Any) {
        player.stop()
    }
    

}
