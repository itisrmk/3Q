//
//  ViewController.swift
//  QuizGame
//
//  Created by Rahul Kashyap on 3/27/18.
//  Copyright © 2018 Rahul Kashyap. All rights reserved.
//
//CrisCrosss
import UIKit

class ThirdQuestionViewController: UIViewController {
    
    
    // Button declaration Outlet
    
    @IBOutlet weak var btnAc3: UIButton!
    @IBOutlet weak var btnBc3: UIButton!
    
    // DECLERATION
    
    @IBOutlet weak var lblResult: UITextView!
    @IBOutlet weak var lblQuestion: UITextView!
    @IBOutlet weak var lblOutcome: UITextView!

    
    //MARK ACTIONS
    
    let WrongAns = UIColor.red
    let RightAns = UIColor.green
    
    
    @IBAction func btnpreviouusQuestion3(_ sender: UIButton) {
        self.performSegue(withIdentifier: "PreviousQuestion3Segue", sender: self)
    }
    
    // Criscross Answer
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
        btnAc3.layer.cornerRadius = 7
        btnBc3.layer.cornerRadius = 7
    
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnMoreinfo3(_ sender: Any) {
        let url = URL(string: "https://en.wikipedia.org/wiki/Demographics_of_India")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
}
