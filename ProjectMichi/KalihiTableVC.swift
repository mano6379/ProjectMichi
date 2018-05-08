//
//  KalihiTableVC.swift
//  ProjectMichi
//
//  Created by Seamus on 4/17/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit

class KalihiTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var TableView: UITableView!
    
    var kalihiStreetNames = ["Bernice", "Hougtailing", "Peter Buck", "Kapālama","Brigham", "Winant", "Alokele", "Kaiwiʻula", "McNeil", "Waiakamilo"]
    var streetImageData = [String]()
    var textViewData = [String]()
    var streetTitleData = [String]()
    
    
    override func viewDidLoad() {
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        streetImageData = dict!.object(forKey:"KalihiStreetImage") as! [String]
        textViewData = dict!.object(forKey: "KaihiRegionTextView") as! [String]
        streetTitleData = dict!.object(forKey: "kalihiStreetTitle") as! [String]
        
         self.TableView.dataSource  = self
        
        super.viewDidLoad()
        self.TableView.backgroundColor = UIColor(red: 14/255.0, green: 122/255.0, blue:194/255.0, alpha: 1)

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func tableView(_ tableView: UITableView,  numberOfRowsInSection section: Int) -> Int {
        
        return kalihiStreetNames.count
    }
    func tableView( _ tableView :UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "kalihiStreetIdentifier")
        let text = kalihiStreetNames[indexPath.row]
        cell?.textLabel?.text = text
        //set text font
        cell?.textLabel?.font = UIFont(name:"Noteworthy", size:22)
        //set text color
        cell?.textLabel?.textColor = UIColor.white
        cell?.backgroundColor = UIColor(red: 14/255.0, green: 122/255.0, blue:194/255.0, alpha: 1)
        return cell!
}
    func tableView( _ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "KalihiRegion"
        {
            //let s1 = segue.destination as! detailViewController
            let s1 = segue.destination as! KalihiDetailedVCViewController
            let imageIndex = TableView.indexPathForSelectedRow?.row
           // s1.imagePass = streetImageData [imageIndex!]
            s1.textViewPass = textViewData [imageIndex!]
            s1.titlePass = streetTitleData [imageIndex!]
        }
    }

    

  


}
