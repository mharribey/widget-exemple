//
//  ViewController.swift
//  BodyPartner
//
//  Created by Mathieu Harribey on 06/02/2018.
//  Copyright © 2018 Mathieu Harribey. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreContainer: UILabel!
    @IBOutlet weak var pointsTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveBtnPressed(_ sender: UIButton) {
        if let pointsValue = Int(pointsTextfield.text!) {
            let sharedDefaults = UserDefaults(suiteName: "group.com.omt.BodyPartner")
            sharedDefaults?.setValue(pointsValue, forKey: "points")
            scoreContainer.text = pointsValue.description
        }
    }
    
}

