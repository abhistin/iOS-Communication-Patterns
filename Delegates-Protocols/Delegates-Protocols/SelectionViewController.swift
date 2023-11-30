//
//  SelectionViewController.swift
//  Delegates-Protocols
//
//  Created by Abhishek Bhardwaj on 30/11/23.
//

import UIKit

protocol SelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}
class SelectionViewController: UIViewController {

    var selectionDelegate: SelectionDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "vader")!, name: "Darth Vader", color: .red)
        self.dismiss(animated: true)
        
    }
    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: .cyan)
        self.dismiss(animated: true)
    }
}
