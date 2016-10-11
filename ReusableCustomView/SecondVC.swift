//
//  SecondVC.swift
//  ReusableCustomView
//
//  Created by Melissa Yung on 11/10/16.
//  Copyright © 2016 MY. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    class func loadedViewController() -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Programatically add our custom reusable view
        let customView = SpecialLabelsGroupView.init(textOne: "Hello, World!", textTwo: "How are you today?", textThree: ":)")
        
        // I'm not sure if there is a way to get this custom view dynamically sized
        customView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        view.addSubview(customView)
        
        customView.center = (customView.superview?.center)!
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
