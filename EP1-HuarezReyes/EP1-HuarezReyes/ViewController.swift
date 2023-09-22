//
//  ViewController.swift
//  EP1-HuarezReyes
//
//  Created by Xindy Alarcon on 21/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    var respuesta : String?
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBAction func calculate(_ sender: UIButton) {
        
        guard let numero = numberTextField.text else {
            respuesta = "No soy un numero"
            return
        }
        
        guard (Int(numero) != nil) else {
            respuesta = "No soy un numero"
            return
        }
        
        
        let integer = Int(numero)!
        respuesta = String(integer*(integer+1)/2)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        guard let destination = segue.destination as? SecondViewController else {
            return
        }
        
        destination.respuesta = respuesta
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

