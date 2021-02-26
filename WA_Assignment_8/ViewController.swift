//
//  ViewController.swift
//  WA_Assignment_8
//
//  Created by Blashko Maksim on 26.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counter)
    }

    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
        updateCounterLabel()
        sender.view?.center = randomPosition()
    }
    
    func updateCounterLabel() {
        counter += 1
        counterLabel.text = String(counter)
    }
    
    func randomPosition() -> CGPoint {
        let screenWidth = Int(self.view.frame.size.width)
        let screenHeight = Int(self.view.frame.size.height)
        
        let pos = CGPoint(x: Int.random(in: 0...screenWidth), y: Int.random(in: 0...screenHeight))

        return pos
    }
    
}

