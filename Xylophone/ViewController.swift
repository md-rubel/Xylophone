//
//  ViewController.swift
//  Xylophone
//
//  Created by MD RUBEL on 18/5/19.
//  Copyright © 2019 MD RUBEL. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
//        print(sender.tag)
        
        playSound(withFile: soundArray[sender.tag - 1])
        
    }
    
    func playSound(withFile soundFile: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayer.play()
        
    }
    
    
}

