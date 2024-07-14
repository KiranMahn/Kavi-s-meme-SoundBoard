//
//  ViewController.swift
//  meme SoundBoard
//
//  Created by Kiran Mahn on 02/08/2020.
//  Copyright © 2020 Fern Inc. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var player: AVAudioPlayer?

    func playSound(audioFileName: String) {
        let url = Bundle.main.url(forResource: audioFileName, withExtension: "m4a")!

        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }

            player.prepareToPlay()
            player.play()

        } catch let error as NSError {
            print(error.description)
        }
    }
    
    @IBAction func meowButton(_ sender: Any) {
        playSound(audioFileName: "New Recording 2")
    }
    
    @IBAction func morganButton(_ sender: Any) {
        playSound(audioFileName: "New Recording 3")
    }
    
    @IBAction func BBQButton(_ sender: Any) {
        playSound(audioFileName: "New Recording 4")
    }
    
    @IBAction func BoxButton(_ sender: Any) {
        playSound(audioFileName: "New Recording 5")
    }
    
    @IBAction func BruhButton(_ sender: Any) {
        playSound(audioFileName: "New Recording 6")
    }
    
    @IBAction func YeetButton(_ sender: Any) {
        playSound(audioFileName: "New Recording 7")
    }
    
    @IBAction func TerryButton(_ sender: Any) {
        playSound(audioFileName: "New Recording 8")
    }
    
    @IBAction func WaterButton(_ sender: Any) {
        playSound(audioFileName: "New Recording 9")
    }
    
    
    
    
    
    
}

