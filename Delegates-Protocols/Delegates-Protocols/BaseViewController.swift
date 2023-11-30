//
//  ViewController.swift
//  Delegates-Protocols
//
//  Created by Abhishek Bhardwaj on 30/11/23.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }

    @IBAction func choseButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionViewController") as! SelectionViewController
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true)
    }
}

extension BaseViewController: SelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        view.backgroundColor = color
    }
}

