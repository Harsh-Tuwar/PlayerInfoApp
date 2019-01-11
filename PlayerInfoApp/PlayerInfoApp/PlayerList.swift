//
//  PlayerList.swift
//  PlayerInfoApp
//
//  Created by Harsh Tuwar on 2019-01-04.
//  Copyright © 2019 HarshTuwar. All rights reserved.
//

import UIKit

class PlayerList: UITableViewController {

    
    var model = Model()
    
  
    
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
        return model.players.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        var player = model.players![indexPath.row] as! Dictionary<String, AnyObject>
        
        let playerName = player["Player"] as! String
        
        cell.textLabel?.text = playerName
        
        let teamName = player["Team"] as! String
        
        cell.imageView?.image = UIImage(named: playerName)

        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let playerDetailStoryBoard = UIStoryboard(name: "PlayerDetail", bundle: Bundle.main).instantiateViewController(withIdentifier: "PlayerDetail") as! PlayerDetail
//        playerDetailStoryBoard.selectedPlayer = model.players[indexPath.row]
//        self.navigationController?.pushViewController(playerDetailStoryBoard, animated: true)
//    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

        //it is important to make sure that we are working with the right segues
        //so we will use "if" block
        if(segue.identifier == "toPlayerDetail") {

            //reference to the destination view controller
            let destVC = segue.destination as! PlayerDetail

            //get the reference for the tapped row
            let tblRowNum = tableView.indexPathForSelectedRow?.row

            let player = model.players[tblRowNum!] as! Dictionary<String, AnyObject>

            //pass the object to destVC
            destVC.selectedPlayer = player

        }
    }
}

//I want to transfer the data from playerList view controller to playerDetail view contoller. I dont know how to do that.
//Help will be highly appreciated

// If you want to pass data without segue, you can also use tableview's didSelect method..
