//
//  FirstVC.swift
//  ReusableCustomView
//
//  Created by Melissa Yung on 11/10/16.
//  Copyright © 2016 MY. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBAction func nextButtonPressed(_ sender: UIButton) {
        // open SecondVC
        present(SecondVC.loadedViewController(), animated: true)
    }
}

