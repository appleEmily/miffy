//
//  AnswerViewController.swift
//  miffy
//
//  Created by Emily Nozaki on 2022/02/14.
//

import UIKit

class AnswerViewController: UIViewController {
    
    
    @IBOutlet weak var correctNumberLabel: UILabel!
    @IBOutlet weak var guessNumberLabel: UILabel!
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var button: UIButton!
    var lovelyRate: Int!
    
    var reseavedNumberOfMiffy: Int!
    var guessMiffy: Int!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctNumberLabel.text = String(reseavedNumberOfMiffy)
        guessNumberLabel.text = String(guessMiffy)
        
        lovelyRate = abs(reseavedNumberOfMiffy - guessMiffy)
        
        if lovelyRate == 0 {
            result.text = "ピッタリ正解！！すごい♡"
        } else {
        result.text = String("\(lovelyRate!)こずれちゃった><")
            
        }
        button.layer.cornerRadius = 10
    }
    
    @IBAction func backTop(_ sender: Any) {
        
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
}
