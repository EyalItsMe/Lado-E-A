//
//  ViewController.swift
//  Lado-E-A
//
//  Created by Eyal Perets on 14/04/2020.
//  Copyright © 2020 myapps. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Declaring Variables
    
    @IBOutlet var emailTextFeild: UITextField!{
    didSet {
               emailTextFeild.tag = 1
               emailTextFeild.becomeFirstResponder()
               emailTextFeild.delegate = self
           }
       }
    @IBOutlet var nameTextField: UITextField!{
        didSet {
                   nameTextField.tag = 2
                   nameTextField.delegate = self
               }
           
    }
    @IBOutlet var passwordTextField: UITextField!
        {
        didSet {
                   passwordTextField.tag = 3
                   
                   passwordTextField.delegate = self
               }
           }
    //אתה צריך לשמור את ה nameTextfield,emailtextfield,passwordtextfield.text בבסיס נתונים כשם, איימיל וסיסמא
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
//MARK: View Controller Life Cycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//MARK: Text Field Delegate -
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextTextField = view.viewWithTag(textField.tag + 1) {
            textField.resignFirstResponder()
            nextTextField.becomeFirstResponder()
        }
        
        return true
    }

   @IBAction func continueTapped(sender: UIButton!) {
        if nameTextField.text == "" || emailTextFeild.text == "" || passwordTextField.text == "" {
            let alertController = UIAlertController(title: "אופס!", message: "לא ניתן להמשיך משום שאחד מן השדות נמצא ריק. יש למלא אימייל, שם מלא וסיסמא על מנת להמשיך", preferredStyle: .alert)
                      let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                      alertController.addAction(alertAction)
                      present(alertController, animated: true, completion: nil)
                      
                      return
                  }
// כאן תבחר לשמור את הפרטים של השם משתמש סיסמא ואימייל לבסיס נתונים
        performSegue(withIdentifier: "continueSegue", sender: Any?.self)
    


            

    }

}
