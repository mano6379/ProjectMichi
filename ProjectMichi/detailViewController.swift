//
//  detailViewController.swift
//  ProjectMichi
//
//  Created by Clark on 3/15/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var imagePass: String?
    var textViewPass: String?
    var titlePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
        // Do any additional setup after loading the view.
        if let textViewName = textViewPass {
            textView.text = textViewName
        }
        if let titleName = titlePass {
            self.title = titleName
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
