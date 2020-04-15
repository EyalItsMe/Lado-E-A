//
//  SportsViewController.swift
//  Lado-E-A
//
//  Created by Eyal Perets on 14/04/2020.
//  Copyright © 2020 myapps. All rights reserved.
//

import UIKit

class SportsViewController: UIViewController {

    var selectedButtons: Array<String> = []
        // זה המשתנה שבתוכו יש את סוגי הספורט שהמשתמש בחר
        // שאותו צריך לשמור בבסיס נתונים כסוג ספורט מועדף
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(sender:UIButton)
    {


    sender.isSelected = !sender.isSelected
        if sender.isSelected == true {
        if let title = sender.titleLabel?.text {
            selectedButtons.append(title)
        }
    }
        else {
            if let title = sender.titleLabel?.text {
                selectedButtons.removeAll { $0 == title }
            }
        }
    print (selectedButtons)
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
