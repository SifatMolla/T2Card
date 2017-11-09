//
//  ViewController.swift
//  T2Card
//
//  Created by Md. Asiful Islam on 10/1/17.
//  Copyright © 2017 Md. Asiful Islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var leftCardImVw: UIImageView!
    @IBOutlet weak var rightCardImVw: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var cards = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    var leftCardScore=0, rightCardScore=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomNumber()-> Int {
        
    return Int(arc4random_uniform(13))
        
    }
    
    @IBAction func resetButton_Touchup(_ sender: Any) {
        
        leftCardScore=0
        rightCardScore=0
        leftScoreLabel.text=String(leftCardScore)
        rightScoreLabel.text=String(rightCardScore)
        leftCardImVw.image=UIImage(named: String("back"))
        rightCardImVw.image=UIImage(named: String("back"))

    }
    
    @IBAction func dealButtonPressed(_ sender: Any) {
     
        let lct = Int(arc4random_uniform(13))
        
        
        leftCardImVw.image=UIImage(named: String(cards[lct]))
       
        let rct = randomNumber()
         rightCardImVw.image=UIImage(named: String(cards[rct]))
        if lct>rct{
            leftCardScore+=1
            leftScoreLabel.text=String(leftCardScore)
        }else if lct==rct{
            
        }else{
            rightCardScore+=1
            rightScoreLabel.text=String(rightCardScore)
        }
        
        
        
        
    }
    
    
}

