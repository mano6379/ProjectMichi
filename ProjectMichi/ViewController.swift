//
//  ViewController.swift
//  ProjectMichi
//
//  Created by Kumu on 2/22/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

//
// ViewController.swift
// ProjectMoku
//
// Created by Kumu on 2/22/18.
// Copyright © 2018 Kumu. All rights reserved.
//
import UIKit
import PaperOnboarding


class ViewController: UIViewController, PaperOnboardingDataSource,
PaperOnboardingDelegate {
    
    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var onboadingView: OnboardingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboadingView.dataSource = self
        onboadingView.delegate = self
    }
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo{
        
        //sample colors: http://www.tayloredmktg.com/rgb/
        
        
        let backgroundColorOne = UIColor(red: 14/255, green: 122/255, blue: 194/255,
                                         alpha: 1)
        let backgroundColorTwo = UIColor(red: 255/255, green: 47/255, blue:
            47/255, alpha: 1)
        let backgroundColorThree = UIColor(red: 246/255, green: 246/255, blue:
            45/255, alpha: 1)
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 25)
        let descriptionFont = UIFont(name: "AvenirNext-Regular", size: 22)
        
        var onboardingViews: [OnboardingItemInfo] = []
        
        onboardingViews.append(OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "onboarding1v2"),title:"Welcome To Streets", description: "To learn the history behind street names in your neighborhood", pageIcon:UIImage(), color: backgroundColorOne, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont:titleFont!, descriptionFont: descriptionFont!))
        
        onboardingViews.append(OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "onboarding2v2"), title:"Pick Your Neighborhood", description: "Learn street to street", pageIcon:UIImage(), color:backgroundColorTwo, titleColor: UIColor.white, descriptionColor:UIColor.white, titleFont: titleFont!, descriptionFont: descriptionFont!))
        
        onboardingViews.append(OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "onboarding 3 v2") , title:"Follow The Route", description: "Discover the history", pageIcon:UIImage(), color: backgroundColorThree,titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont:titleFont!, descriptionFont: descriptionFont!))
        
        return onboardingViews[index]
    }
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int)
    {
        
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if (index == 1)
        {
            if (self.getStartedButton.alpha == 1)
            {
                UIView.animate(withDuration: 0.2, animations: {
                    self.getStartedButton.alpha = 0
                })
            }
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if (index == 2) {
            UIView.animate(withDuration: 0.4, animations: {
                self.getStartedButton.alpha = 1
            })
        }
    }
    
    @IBAction func getStarted(_ sender: Any) {
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(true, forKey:"onboardingComplete")
        userDefaults.synchronize()
    }
    
    
    @IBAction func gotStarted(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(true,forKey:"onboardingComplete")
        userDefaults.synchronize()
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
        
    }
    








}



