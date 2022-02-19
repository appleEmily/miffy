//
//  AddMiffyViewController.swift
//  miffy
//
//  Created by Emily Nozaki on 2022/02/14.
//

import UIKit

class AddMiffyViewController: UIViewController {
    
    var numberOfMiffy: Int = 0
    
    var image: UIImageView!
    
    var miffyCollection: Array<String> = ["miffy_awake","miffy_sleep"]
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addButton.layer.cornerRadius = 20
        nextButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func addMiffy(_ sender: Any) {
        if numberOfMiffy < 10 {
            numberOfMiffy += 1
            label.text = "\(numberOfMiffy) / 10ひき"
            addMiffy()
            
        } else {
        }
        
    }
    
    @IBAction func toGuess(_ sender: Any) {
        self.performSegue(withIdentifier: "toGuess", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGuess" {
            let nextVC = segue.destination as! GuessMiffyViewController
            nextVC.reseavedNumberOfMiffy = numberOfMiffy
        }
    }
    
    //メソッドで、ミッフィーが増えるようにする
    
    func addMiffy() {
        let selectMiffy: Int = Int.random(in: 0...1)
        let randomX: Int = Int.random(in: 22...360)
        let randomY: Int = Int.random(in: 220...560)
        print(miffyCollection[selectMiffy])
        print(CGPoint(x: randomX, y: randomY))
        image = UIImageView(frame: CGRect(x:0, y: 0, width: 60, height: 60))
        image.image = UIImage(named: miffyCollection[selectMiffy])
        image.center = CGPoint(x: randomX, y: randomY)
        self.view.addSubview(image)
        
    }
    
    
    
}
