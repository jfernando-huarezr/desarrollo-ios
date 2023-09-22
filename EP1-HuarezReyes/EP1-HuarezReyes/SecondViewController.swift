//
//  SecondViewController.swift
//  EP1-HuarezReyes
//
//  Created by Xindy Alarcon on 21/09/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var numberLabel: UILabel!
    var respuesta: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabel.text = respuesta
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
