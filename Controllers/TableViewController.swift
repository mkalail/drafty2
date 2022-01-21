//
//  TableViewController.swift
//  Drafty2
//
//  Created by Michael Kalail on 1/19/22.
//

import UIKit

class TableViewController: UITableViewController {
    
   var textViewCell = TextViewCell()
    
    var sessions = [TextViewCell()]
        
    
    
    
    //var numberOfSessions = 1
    
    @IBAction func addSession(_ sender: Any) {
        addRow()
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // display a button in navigation bar
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "textViewCell", for: indexPath) as! TextViewCell
        
        cell.delegate = self
        

        // Configure the cell...

        return cell
    }
    

    

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension TableViewController: TextViewCellDelegate {
    
    func updateCellHeight() {
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    func addRow() {
        //let targetRow = sessions[0]
        let newIndexPath = IndexPath(row: 0, section: 0)
        tableView.beginUpdates()
        sessions.insert(textViewCell, at: 0)
        tableView.insertRows(at: [newIndexPath], with: .automatic)
        
        tableView.endUpdates()
    }
    

}
