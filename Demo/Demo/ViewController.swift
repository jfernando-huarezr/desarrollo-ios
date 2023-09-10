//
//  ViewController.swift
//  Demo
//
//  Created by Xindy Alarcon on 10/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBAction func sayHiButton(_ sender: UIButton) {
        greetingLabel.text = nameTextField.text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

