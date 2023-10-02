//
//  ContactViewController.swift
//  clase4-agenda
//
//  Created by Xindy Alarcon on 2/10/23.
//

import UIKit

//es como lo que en java es interfaz en teoria
protocol ContactViewDelegate {
    func close()
    
    func save(name: String)
}

class ContactViewController: UIViewController {
    
    var delegate: ContactViewDelegate?
    var name: String?

    @IBOutlet weak var nameText: UITextField!
    
    @IBAction func close(_ sender: UIBarButtonItem) {
        guard let delegate = delegate else {
            return
        }
        delegate.close() //cierra la pantalla
    }
    @IBAction func save(_ sender: UIBarButtonItem) {
        
        guard let delegate = delegate else {
            return
        }
        
        guard let  name = nameText.text else {
            return
        }
        
        delegate.save(name: name)
        delegate.close()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let name = name else {
            return
        }
        
        nameText.text = name

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
