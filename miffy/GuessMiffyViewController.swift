//
//  GuessMiffyViewController.swift
//  miffy
//
//  Created by Emily Nozaki on 2022/02/14.
//

import UIKit

class GuessMiffyViewController: UIViewController, UITextFieldDelegate {

    var reseavedNumberOfMiffy: Int!
    
    @IBOutlet weak var GuessText: UITextField!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GuessText.delegate = self
        nextButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func goAnswer(_ sender: Any) {
        
        self.performSegue(withIdentifier: "toAnswer", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toAnswer" {
                let nextVC = segue.destination as! AnswerViewController
                nextVC.reseavedNumberOfMiffy = reseavedNumberOfMiffy
                nextVC.guessMiffy = Int((textField.text)!)
            }
        }

}
