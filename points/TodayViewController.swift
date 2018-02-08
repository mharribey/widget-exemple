//
//  TodayViewController.swift
//  points
//
//  Created by Mathieu Harribey on 06/02/2018.
//  Copyright © 2018 Mathieu Harribey. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet weak var points: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sharedDefaults = UserDefaults(suiteName: "group.com.omt.BodyPartner")
        if let pointsValue = sharedDefaults?.value(forKey: "points") as? Int {
            points.text = pointsValue.description
        } else {
            points.text = "0"
        }
    }
    
    @IBAction func openApp(_ sender: Any) {
        extensionContext?.open(URL(string: "bodyp://")! , completionHandler: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    
    
    /* bonjour mathieu, tu es magnifique, je n'ai jamais osé te le dire en face, cependant j'ai un autre homme dans ma vie #basien / cependant je t'aime, je t'aime à la folie. Signé : ton admirateur secret. <3 */

    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
