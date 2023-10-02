//
//  ViewController.swift
//  ToDoList-Clase6
//
//  Created by Xindy Alarcon on 2/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var tasks = ["Estudiar", "Ir a clases"]
    
    @IBAction func addTask(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Enter new Task", message: nil, preferredStyle: .alert)
        
        alertController.addTextField()
        let actionAdd = UIAlertAction(title: "Add", style: .default) { _ in
            guard let textField = alertController.textFields?[0] else {
                return
            }
            
            guard let task = textField.text else {
                return
            }
            
            self.tasks.append(task)
            self.tableView.reloadData()
        }
        
        alertController.addAction(actionAdd)
        present(alertController, animated: true)
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

