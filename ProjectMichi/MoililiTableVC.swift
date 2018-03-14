//
//  MoililiTableVC.swift
//  ProjectMichi
//
//  Created by Clark on 3/13/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit

class MoililiTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate { 
  
    
   
        
        var moiliiliStreetNames = ["Beretania", "Isenberg", "Young", "King", "Coolidge", "Hausten", "Kapaakea", "Kaialiu"]
        
        
        
        @IBOutlet weak var tableView: UITableView!
        override func viewDidLoad() {
            
            self.tableView.dataSource  = self
            
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        func tableView(_ tableView: UITableView,  numberOfRowsInSection section: Int) -> Int {
            
            return moiliiliStreetNames.count
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
            UITableViewCell {
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
                let text = moiliiliStreetNames[indexPath.row]
                cell.textLabel?.text = text
                
                return cell
                
        }
        
    }
    
    

    

