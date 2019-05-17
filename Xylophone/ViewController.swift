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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
//        print(sender.tag)
        
        let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayer.play()
        
    }
    
    
}

