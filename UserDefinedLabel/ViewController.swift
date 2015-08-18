//
//  ViewController.swift
//  UserDefinedLabel
//
//  Created by Nadia Yudina on 8/18/15.
//  Copyright (c) 2015 Nadia Yudina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel?
    private let labelTextKey = "LABEL_TEXT"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let settings = NSBundle.mainBundle().infoDictionary as? [String: AnyObject] {
            if let setting = settings[labelTextKey] as? String {
                if let label = self.label {
                    label.text = setting
                }
            }
        }

    }
}

