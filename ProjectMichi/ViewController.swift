//
//  ViewController.swift
//  ProjectMichi
//
//  Created by Kumu on 2/22/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit
import PaperOnboarding

class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {
    
    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var onboardingView: OnboardingView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingView.dataSource = self
        onboardingView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func onboardingItemsCount() -> Int {
        
        return 3
        
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo{
        
        let backgroundColorOne = UIColor(red: 215/255, green: 72/255, blue: 89/255, alpha: 1)
        
        let backgroundColorTwo = UIColor(red: 106/255, green: 166/255, blue: 211/255, alpha: 1)
        
        let backgroundColorThree = UIColor(red: 168/255, green: 200/255, blue: 78/255, alpha: 1)
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 20)
        
        let descriptionFont = UIFont(name: "AvenirNext-Regular", size: 18)
        
        var onboardingViews: [OnboardingItemInfo] = []
        
        onboardingViews.append(OnboardingItemInfo(informationImage:#imageLiteral(resourceName: "notification"), title: "Select Your Mokupuni (Island)", description: "Choose A Mokupuni To Start Your Exploration", pageIcon:UIImage(), color: backgroundColorOne, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont!, descriptionFont: descriptionFont!))
        
                onboardingViews.append(OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "rocket") , title: "Select Your Moku (District)", description: "Start learning about each Moku and the wahi pana (or sites) of each Moku", pageIcon:UIImage(), color: backgroundColorTwo, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont!, descriptionFont: descriptionFont!))
        
        onboardingViews.append(OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "brush"), title: "Select a Wahi Pana", description: "Learn and Explore the Richness of Each Wahi Pana AtYour ", pageIcon:UIImage(), color: backgroundColorThree, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont!, descriptionFont: descriptionFont!))
        
        return onboardingViews[index]
    }

}

