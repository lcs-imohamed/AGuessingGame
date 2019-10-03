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
    @IBOutlet weak var submittedGuess: UITextField!
    let targetNumber = Int.random(in: 1...100)
    
    
    
    //MARK: Initializers
    
    
    
    //MARK: Methods (functions)-behaviors
    func speak(this feedback: String){
       
        / Do any additional setup after loading the view.// Make an object named 'synthesizer' which is an instance of the
        //class 'AVSpeechSynthesizer'
        
        let synthesiser = AVSpeechSynthesizer()
        
        //Make an object 'utterance' which is an instance of the
        //class 'AVSpeechUtterance'
        let utterance = AVSpeechUtterance(string: feedback)
        
        //Speak the message
        synthesiser.speak(utterance)
        
        
    }
    
    override func viewDidLoad() {
        // Runs as soon as view becomes visible to user.
        super.viewDidLoad()
        
        
        speak(this:"I'm thinking of a number between 1-100. Guess what it is.")
        
    }
    
    // Will be used to check a guess
    @IBAction func checkGuess(_ sender: Any) {
        // Obtain value from guess field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        //For testing purposes, what was the guess?
        print("For testing purposes, the guess made was \(guessNumber)")
        
        //Give the appropriate feedback to user
       
        if guessNumber > targetNumber{
            print("Guess lower next time.")
            
            // Make an object named 'synthesizer' which is an instance of the
           let synthesiser = AVSpeechSynthesizer()
            
            //Make a string that contains what we want the computer to say.
            let message = "Guess lower next time."
          
            //Make an object 'utterance' which is an instance of the
            //class 'AVSpeechUtterance'
            let utterance = AVSpeechUtterance(string: message)
            
            //Speak the message
            synthesiser.speak(utterance)
            
        } else if guessNumber < targetNumber {
            print("Guess higher next time.")
            
            // Make an object named 'synthesizer' which is an instance of the
            let synthesiser = AVSpeechSynthesizer()
            
            //Make a string that contains what we want the computer to say.
            let message = "Guess higher next time."
            
            //Make an object 'utterance' which is an instance of the
            //class 'AVSpeechUtterance'
            let utterance = AVSpeechUtterance(string: message)
            
            //Speak the message
            synthesiser.speak(utterance)
            
            
        } else {
            print("Yay, you got the right answer, finally.")
            
            // Make an object named 'synthesizer' which is an instance of the
            let synthesiser = AVSpeechSynthesizer()
            
            //Make a string that contains what we want the computer to say.
            let message = "Yay, you got the right answer, finally."
            
            //Make an object 'utterance' which is an instance of the
            //class 'AVSpeechUtterance'
            let utterance = AVSpeechUtterance(string: message)
            
            //Speak the message
            synthesiser.speak(utterance)
            
            
            
        }
}
}
