//
//  ViewController.swift
//  TableView
//
//  Created by Bryan Gonsalves on 27/08/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arr = ["General","Accessibility","Security","Passwords","Notifications","Sounds","Do Not Disturb","Control Center"]
    var image = ["icons8-settings-50","icons8-accessibility-48","icons8-privacy-30","icons8-password-key-24","icons8-notifications-50","icons8-sounds-64","icons8-do-not-disturb-50","icons8-control-center-66"]
    
    
    
    @IBOutlet weak var TableView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
        
        TableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "cellcustom")}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(image[indexPath.row])
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "cellcustom", for: indexPath) as! CustomCell
        cell.Icon.image = UIImage(named: image[indexPath.row])
        cell.IconLabel.text = arr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Settings Page"
    }
    

    
}

