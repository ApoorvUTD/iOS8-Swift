//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Apoorv singh on 1/6/15.
//  Copyright (c) 2015 Apricot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var goNumber = 1
    //0 empty 1 nought 2 cross
    var winner = 0
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winningCombination = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[0, 3, 6],[1, 4, 7],[2, 5, 8],[0, 4, 8],[2, 4, 6]]
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    @IBAction func playAgainPressed(sender: AnyObject) {
         goNumber = 1
        
         winner = 0
        
         gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        label.alpha = 0
        playAgain.alpha = 0
        
        var button : UIButton
        for var i = 0 ; i < 9; i++ {
        
        button = view.viewWithTag(i) as UIButton
        button.setImage(nil , forState: .Normal)
        }
        
    }
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        
        if (gameState[sender.tag]==0 && winner == 0)  {
        
        var image = UIImage()
        
        if (goNumber % 2 == 0){
         image = UIImage(named: "Cross.png")!
            
            gameState[sender.tag] = 2
        } else {
         image = UIImage(named: "nought.png")!
            
            gameState[sender.tag] = 1
        
        }
            for combination in winningCombination {
                if (gameState[combination[0]] == gameState[combination[1]]  && gameState[combination[1]] == gameState[combination[2]] && gameState[combination[0]] != 0){
                
                winner = gameState[combination[0]]
                
                }
                else if contains(gameState, 0) == false && winner != 1 && winner != 2 {
                    
                    winner = 3
                    
                }
                
                
            }
            if winner != 0{
                if (winner == 1){
                label.text = "Noughts has won!"
                    
                }
                if (winner == 2){
                label.text = "Crosses has won!"
                
                }
                if (winner == 3) {
                label.text = "This what happens when equal IQ clash!"
                }
                UIView.animateWithDuration(1, animations: {
                    self.label.alpha = 1
                    self.playAgain.alpha = 1
                })

            }
        goNumber++
        
        sender.setImage(image, forState: .Normal)
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        label.alpha = 0
        playAgain.alpha = 0
    }


}

