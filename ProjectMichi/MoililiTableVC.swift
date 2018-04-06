//
//  MoililiTableVC.swift
//  ProjectMichi
//
//  Created by Clark on 3/13/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit

class MoililiTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate { 
  
    
   
        
        var moiliiliStreetNames = ["Beretania","Young","Isenberg","King",  "Hausten", "Kapaakea"]
        
        
        
        @IBOutlet weak var tableView: UITableView!
    
    var streetImageData = [String]()
    var textViewData = [String]()
    var streetTitleData = [String]()
        
        override func viewDidLoad() {
            
            let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
            let dict = NSDictionary(contentsOfFile: path!)
            
            streetImageData = dict!.object(forKey:"StreetImages") as! [String]
            textViewData = dict!.object(forKey: "MoiliiliRegionTextView") as! [String]
            streetTitleData = dict!.object(forKey: "StreetTitle") as! [String]
           
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = streetImageData [imageIndex!]
            s1.textViewPass = textViewData [imageIndex!]
            s1.titlePass = streetTitleData [imageIndex!]
        }
    }
    }
    
    

    

