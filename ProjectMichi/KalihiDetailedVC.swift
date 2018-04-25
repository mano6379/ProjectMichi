//
//  KalihiDetailedVCViewController.swift
//  ProjectMichi
//
//  Created by Clark on 4/19/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit

class KalihiDetailedVCViewController: UIViewController {
    
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
        if let textViewName = textViewPass {
            textView.text = textViewName
        }
        if let titleName = titlePass {
            self.title = titleName
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
