//
//  ViewController.swift
//  Audio Player
//
//  Created by Hugo Morelli on 10/11/16.
//  Copyright © 2016 Hugo Morelli. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()
    
    @IBOutlet weak var volumen: UISlider!
    @IBAction func play(_ sender: AnyObject) {
        
          player.play()
    }
    @IBAction func pause(_ sender: AnyObject) {
    
          player.pause()
    }
    
    @IBAction func volume(_ sender: AnyObject) {
        
          player.volume = volumen.value
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let audioPath = Bundle.main.path(forResource: "OtraVez", ofType: "mp3")
        do{
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
          
        } catch{
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

