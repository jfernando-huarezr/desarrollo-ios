//
//  ViewController.swift
//  navigation-clase-4
//
//  Created by Xindy Alarcon on 21/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let name = nameTextField.text else {
            return
        }
        
        guard let destination = segue.destination as? SecondViewController else {
            return
        }
        
        destination.name = name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

