//
//  SecondViewController.swift
//  navigation-clase-4
//
//  Created by Xindy Alarcon on 21/09/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String?
    
    
    //viewDidLoad, metodo que se ejecuta cuando la vista ya se ha mostrado
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let nombre = name else {
            return
        }
        
        nameLabel.text = name
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
