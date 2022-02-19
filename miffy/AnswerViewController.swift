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
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var loveResult: UIImageView!
    var lovelyRate: Int!
    
    var reseavedNumberOfMiffy: Int!
    var guessMiffy: Int!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("koko", guessMiffy!)
        correctNumberLabel.text = String("\(reseavedNumberOfMiffy!)ひき")
        guessNumberLabel.text = String("\(guessMiffy!)ひき")
        
        lovelyRate = abs(reseavedNumberOfMiffy - guessMiffy)
        print(lovelyRate!)
        
        if lovelyRate == 10 {
            loveResult.image = UIImage(named: "0")
        } else if lovelyRate >= 8{
            loveResult.image = UIImage(named: "20")
        } else if lovelyRate >= 6 {
            loveResult.image = UIImage(named: "40")
        } else if lovelyRate >= 4 {
            loveResult.image = UIImage(named: "60")
        } else if lovelyRate >= 1 {
            loveResult.image = UIImage(named: "80")
        } else if lovelyRate >= 0 {
            loveResult.image = UIImage(named: "100")
        } else {
            
        }
        button.layer.cornerRadius = 10
    }
    
    @IBAction func backTop(_ sender: Any) {
        
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
}
