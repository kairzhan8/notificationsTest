//
//  NotificationsTableViewController.swift
//  notificationsTest
//
//  Created by Kairzhan Kural on 12/10/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class NotificationsTableViewController: UITableViewController {
    
    let tableViewCell = "tableViewCell"
    
    let notifications = ["Local Notification",
    "Local Notification with Action",
    "Local Notification with Content",
    "Push Notification with  APNs",
    "Push Notification with Firebase",
    "Push Notification with Content"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        setupTableView()
    }
    
    private func setupTableView() {
        navigationItem.title = "Notifications"
        tableView.backgroundColor = .darkGray
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: tableViewCell)
    }
    
    private func setupLayouts() {
        view.backgroundColor = .white
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        notifications.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCell, for: indexPath)
        cell.textLabel?.text = notifications[indexPath.row]
        cell.textLabel?.textColor = .black
        return cell
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        cell?.textLabel?.textColor = .red
        
        let notificationType = notifications[indexPath.row]
        
        let alert = UIAlertController(title: notificationType,
                                      message: "After 5 seconds " + notificationType + " will appear",
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        cell?.textLabel?.textColor = .blue
    }
    
}
