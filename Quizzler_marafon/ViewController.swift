//
//  ViewController.swift
//  Quizzler_marafon
//
//  Created by Александр Гуркин on 25.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let question = [["A slug's blood is green.", "True"],
                      ["Approximately one quarter of human bones are in the feet.", "True"],
                      ["The total surface area of two human lungs is approximately 70 square metres.", "True"],
                      ["In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", "True"],
                      ["In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", "False"],
                      ["It is illegal to pee in the Ocean in Portugal.", "True"],
                      ["You can lead a cow down stairs but not up stairs.", "False"],
                      ["Google was originally called 'Backrub'.", "True"],
                      ["Buzz Aldrin's mother's maiden name was 'Moon'.", "True"],
                      ["The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", "False"],
                      ["No piece of square dry paper can be folded in half more than 7 times.", "False"],
                    ["Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", "True"]]
    var numderQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButton(_ sender: UIButton) {
            if numderQuestion + 1 < question.count {
                numderQuestion += 1
            } else {
                numderQuestion = 0
            }
            updateUI()
        }
    
    func updateUI() {
        questionLabel.text = question[numderQuestion][0]
    }
    
}

