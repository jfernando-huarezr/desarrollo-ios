//
//  TableViewController.swift
//  clase4-agenda
//
//  Created by Xindy Alarcon on 21/09/23.
//

import UIKit

class TableViewController: UITableViewController, ContactViewDelegate {
    func close() {
        dismiss(animated: true)
    }
    
    func save(name: String) {
        guard let indexPath = tableView.indexPathForSelectedRow else {
            names.append(name)
            self.tableView.reloadData()
            return
        }
        
        names[indexPath.row] = name
        self.tableView.reloadData()

    }
    
    
    var names = ["Juan", "Marcos", "Lucas", "Mateo"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Section: \(section)"
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    
    //cuando haces el swipe, para borrar
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            names.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    //secuencia
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destination = segue.destination as? UINavigationController else {
            return
        } //verifica que la secuencia que he activado me lleve a un Navigation Controller
                
        
        //topViewController es el viewController ve primero al principio de la navegacion. En este caso el primero que ve es ContactViewController
        guard let viewController = destination.topViewController as? ContactViewController else {
            return
        }
        
        viewController.delegate = self
        
        guard let indexPath = tableView.indexPathForSelectedRow else {
            return
        }
        
        let name = names[indexPath.row]
        
        viewController.name = name
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
