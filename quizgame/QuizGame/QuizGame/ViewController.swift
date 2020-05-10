//
//  ViewController.swift
//  QuizGame
//
//  Created by Rahul Kashyap on 3/27/18.
//  Copyright © 2018 Rahul Kashyap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Button declaration Outlet

    @IBOutlet weak var btnA1: UIButton!
    @IBOutlet weak var btnB2: UIButton!
    @IBOutlet weak var btnnextQuestion2: UIButton!
    
    // DECLERATION
    
    @IBOutlet weak var lblResult: UITextView!
    @IBOutlet weak var lblQuestion: UITextView!
    @IBOutlet weak var lblOutcome: UITextView!
    @IBOutlet weak var vColorchanger: UIView!
    
    //MARK ACTIONS
    
    let WrongAns = UIColor.red
    let RightAns = UIColor.green
    
    
    @IBAction func btnViewCHanger(_ sender: UIButton) {
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
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
    
    
    
    
    
//ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      btnA1.layer.cornerRadius = 7
      btnB2.layer.cornerRadius = 7
    btnnextQuestion2.layer.cornerRadius = 7
        
        
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnMoreinfo(_ sender: Any) {
        let url = URL(string: "https://en.wikipedia.org/wiki/New_Delhi")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    

}

