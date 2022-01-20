//
//  LogListTableViewController.swift
//  TravelDiary
//
//  Created by adam smith on 1/20/22.
//

import UIKit

class LogListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return LogController.sharedInstance.logs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      guard let cell = tableView.dequeueReusableCell(withIdentifier: "logCell", for: indexPath)
        as? LogTableViewCell else {return UITableViewCell() }
        
        let log = LogController.sharedInstance.logs[indexPath.row]
        cell.updateViews(log: log)

        // Configure the cell...

        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let log = LogController.sharedInstance.logs[indexPath.row]
            LogController.sharedInstance.deleteLog(log: log)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // identifier, index, destination, obj to send, obj to receive
        if segue.identifier == "toDetailVC" {
            //what segue was triggered
            if let index = tableView.indexPathForSelectedRow {
                //what cell triggered this segue
                if let destination = segue.destination as? LogDeatailViewController {
                    //where is this transition edning
                    let log = LogController.sharedInstance.logs[index.row]
                    //what obj are they trying to send
                    destination.log = log
                }
            }
        }
        //what obj will catch the data
    }

}
