//
//  ViewController.swift
//  PSRgame
//
//  Created by Otis on 2019/4/13.
//  Copyright © 2019年 Otis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgound.backgroundColor = UIColor.darkGray
        nextGameButton.layer.borderWidth = 1
        nextGameButton.layer.cornerRadius = 10
        nextGameButton.layer.backgroundColor = UIColor.orange.cgColor
        nextGameButton.layer.borderColor = UIColor.orange.cgColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBOutlet var backgound: UIView!
    
    @IBOutlet weak var nextGameButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var robotReact: UILabel!
    @IBOutlet weak var resultSign: UILabel!
    
    @IBAction func choicePaper(_ sender: Any) {
        UIUpdate(Sign.paper)
        scissorsButton.isHidden = true
        rockButton.isHidden = true
    }
    @IBAction func choiceScissors(_ sender: Any) {
        UIUpdate(Sign.scissors)
        paperButton.isHidden = true
        rockButton.isHidden = true
    }
    @IBAction func choiceRock(_ sender: Any) {
        UIUpdate(Sign.rock)
        scissorsButton.isHidden = true
        paperButton.isHidden = true
    }
    
    @IBAction func nextGame(_ sender: Any) {
        
        backgound.backgroundColor = UIColor.darkGray
        resultSign.text = "Choice one to play!"
        robotReact.text = "🤖"
        rockButton.isHidden = false
        scissorsButton.isHidden = false
        paperButton.isHidden = false
    }
    
    func UIUpdate(_ yourChoice:Sign){
        
        backgound.backgroundColor = UIColor.gray
        let robotChoice = randomSign()
    //show result
    let result = play(player: yourChoice, robot: robotChoice)
        if result == .win{
            resultSign.text = "You Win!"
        }
        else if result == .lose{
            resultSign.text = "You Lose!"
        }
        else{
            resultSign.text = "Draw!"
        }
    //update UI
        if robotChoice == .paper{
            robotReact.text = "✋🏻"
        }
        else if robotChoice == .rock{
            robotReact.text = "✊🏻"
        }
        else{
            robotReact.text = "✌🏻"
        }
        
    }
  
}

