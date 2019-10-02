//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Mohamed, Ilana on 2019-09-30.
//  Copyright © 2019 Mohamed, Ilana. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    
    
    
    //MARK: Initializers
    
    
    
    //MARK: Methods (functions)-behaviors
    override func viewDidLoad() {
        // Runs as soon as view becomes visible to user.
        super.viewDidLoad()
        // Do any additional setup after loading the view.// Make an object named 'synthesizer' which is an instance of the
        //class 'AVSpeechSynthesizer'
        let synthesiser = AVSpeechSynthesizer()

        
        
        //Make a string that contains what we want the computer to say.
        let message = "I'm thinking of a number between 1-100. Guess what it is."
        //Make an object 'utterance' which is an instance of the
        //class 'AVSpeechUtterance'
        var utterance = AVSpeechUtterance(string: message)
        
        //Speak the message
        synthesiser.speak(utterance)
    }
    


}

