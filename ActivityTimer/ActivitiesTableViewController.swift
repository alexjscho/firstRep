//
//  ActivitiesTableViewController.swift
//  ActivityTimeManager
//
//  Created by Alex Cho on 2019-10-24.
//  Copyright © 2019 Alex Cho. All rights reserved.
//

import UIKit

class ActivitiesTableViewController: UITableViewController {
    
    var sectionedActivities: [ActivityType:[Activity]] = [
        .Health:[Activity(title: "Leg Workout", location: "Delbrook Gym", activityType: .Health)],
        .Study:[Activity(title: "AP Computer Science", location: "Home", activityType: .Study), Activity(title: "Chemistry", location: "Secondary School", activityType: .Study)],
        .Hobby:[Activity(title: "Reading", location: "Home", activityType: .Hobby)],
        .Entertainment:[Activity(title: "Movie", location: "Theatre", activityType: .Entertainment)],
        .Other:[Activity(title: "Organizing", location: "Home", activityType: .Other)]
    ]
    
    var activeTypes: [ActivityType] {
        var activeTypes: [ActivityType] = []
        
        for section in sectionedActivities {
            if section.value.count > 0 {
                activeTypes.append(section.key)
            }
        }
        return activeTypes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 88
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return activeTypes.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionedActivities[activeTypes[section]]?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return activeTypes[section].rawValue
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath) as! ActivityTableViewCell
        let activity = sectionedActivities[activeTypes[indexPath.section]]?[indexPath.row]
        
        cell.titleLabel.text = activity?.title
        cell.locationLabel.text = activity?.location
        cell.timeLabel1.text = activity?.time1
        cell.unitLabel1.text = activity?.unit1
        cell.timeLabel2.text = activity?.time2
        cell.unitLabel2.text = activity?.unit2
        
        return cell
    }
    
    
    
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
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
