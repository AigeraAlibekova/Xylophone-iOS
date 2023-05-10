//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
//    bylo "?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

//    option + (purple) -> documentation !!!
    
    @IBAction func cKeyPressed(_ sender: UIButton) {
        
//       !-tochno est' takoi button
        sender.alpha = 0.5
        print("Start")
        playSound(soundName: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1
            print("End")
        }
    }
    
//    bundle - a representation of the code and resources stored on disk. Main - to locate our sound file resource
    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
       /* guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
        do {*/
//            playback, cause it's central for our app. it's not backgroung music
//            even if the phone is in silent mode
           /* try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)*/
            
            /*The following line is required for the player to work on iOS 11.
             Change the file type accordingly*/
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /*iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3)*/
            
          /*  guard let player = player else { return }
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }*/
    }
    

}

