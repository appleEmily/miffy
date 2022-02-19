//
//  GuessMiffyViewController.swift
//  miffy
//
//  Created by Emily Nozaki on 2022/02/14.
//

import UIKit

class GuessMiffyViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var reseavedNumberOfMiffy: Int!
    
    //    @IBOutlet weak var GuessText: UITextField!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var guess: UIPickerView!
    
    var answer: Array<Int> = [0,1,2,3,4,5,6,7,8,9,10]
    
    var answerSend: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guess.delegate = self
        nextButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func goAnswer(_ sender: Any) {
        
        self.performSegue(withIdentifier: "toAnswer", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAnswer" {
            let nextVC = segue.destination as! AnswerViewController
            nextVC.reseavedNumberOfMiffy = reseavedNumberOfMiffy
            nextVC.guessMiffy = answerSend
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return answer.count
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        
        return String(answer[row])
    }
    // UIPickerViewのRowが選択された時の挙動
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        answerSend = answer[row]
    }
    
    
    
}
