//
//  ViewController.swift
//  ThreeLetterWord
//
//  Created by EDUARDO MENDOZA on 11/28/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var letterLable: [UILabel]!
    @IBOutlet weak var currentLetterLable: UILabel!
    
    var letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var counter = 0
    var currentLetter: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAndSetCurrentLetter()
    }
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        let selectedPoint = sender.location(in: view)
        for label in letterLable{
            if label.frame.contains(selectedPoint){
                label.text = "\(currentLetter!)"
            }
        }
        counter += 1
        if counter > 25{
            counter = resetCounter()
        }
        getAndSetCurrentLetter()
    }
    
    func getAndSetCurrentLetter(){
        currentLetter = letters[counter]
        currentLetterLable.text = currentLetter
    }
    
    func resetCounter() -> Int {
        let alert = UIAlertController(title: "resetting counter", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            for label in self.letterLable{
                lable.text = "?"
            }
            alert.addAction(action)
            present(alert, animater: true, completion: nil)
            return 0
        }
    }
    
    
    
    
    
}
