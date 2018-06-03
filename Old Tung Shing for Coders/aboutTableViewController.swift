//
//  aboutTableViewController.swift
//  Old Tung Shing for Coders
//
//  Created by Lucka on 9/9/17.
//  Copyright © 2017年 Lucka. All rights reserved.
//

import UIKit

class aboutTableViewController: UITableViewController {

    @IBOutlet weak var versionCell: UITableViewCell!
    @IBOutlet weak var sourceCell: UITableViewCell!
    @IBOutlet weak var creditLuckaCell: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let releaseVersionNumber: String = (Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String)!
        let buildVersionNumber: String = (Bundle.main.infoDictionary!["CFBundleVersion"] as? String)!
        
        versionCell.textLabel?.text = "\(releaseVersionNumber) (\(buildVersionNumber))"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            UIApplication.shared.open(URL(string: "http://sandbox.runjs.cn/show/ydp3it7b")!)
            sourceCell.isSelected = false
        }
        
        if indexPath.section == 2 {
            UIApplication.shared.open(URL(string: "https://twitter.com/lucka-me")!)
            creditLuckaCell.isSelected = false
        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
