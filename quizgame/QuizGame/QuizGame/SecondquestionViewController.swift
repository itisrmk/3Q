//
//  SecondquestionViewController.swift
//  QuizGame
//
//  Created by Rahul Kashyap on 3/27/18.
//  Copyright © 2018 Rahul Kashyap. All rights reserved.
//

import UIKit

class SecondquestionViewController: UIViewController {
    // Button OUtlet Decleraion
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnPreviousQuestion: UIButton!
    
    @IBOutlet weak var btnNextQuestion2a: UIButton!
    // DECLERATION
    
    @IBOutlet weak var lblResult: UITextView!
    @IBOutlet weak var lblQuestion: UITextView!
    @IBOutlet weak var lblOutcome: UITextView!
    //MARK ACTIONS
    
    let WrongAns = UIColor.red
    let RightAns = UIColor.green
    

    @IBAction func btnPreviousQuestion(_ sender: UIButton) {
        self.performSegue(withIdentifier: "GobacktoDisplay1Segue", sender: self)
    }
    
    @IBAction func btnnextQuestion2(_ sender: UIButton) {
        self.performSegue(withIdentifier: "NextQuestion2Segue", sender: self)
    }
    
    
    @IBAction func btnA(_ sender: UIButton) {
        sender.pulsate()
        var Outcome = lblOutcome.text
        lblOutcome.text = "Correct"
        lblOutcome.backgroundColor = RightAns
    }
    
    
    @IBAction func btnB(_ sender: UIButton) {
        sender.shake()
        var Outcome = lblOutcome.text
        lblOutcome.text = "Wrong"
        lblOutcome.backgroundColor = WrongAns
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      btnA.layer.cornerRadius = 7
      btnB.layer.cornerRadius = 7
btnPreviousQuestion.layer.cornerRadius = 7

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    @IBAction func btnMoreinfo2(_ sender: Any) {
        let url = URL(string: "https://en.wikipedia.org/wiki/Narendra_Modi")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    
    
    
}


