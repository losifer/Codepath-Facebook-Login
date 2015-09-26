//
//  LoginViewController.swift
//  Facebook
//
//  Created by Sebastian Drew on 9/24/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var textfieldContainers: UIView!
    
    @IBOutlet weak var loginDisabledButton: UIButton!
    @IBOutlet weak var loginEnabledButton: UIButton!
    @IBOutlet weak var loginLoggingInButton: UIButton!
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    
    
    @IBAction func loginDisabledButton(sender: AnyObject) {
    }
    
    @IBAction func loginEnabledButton(sender: AnyObject) {
        
        if username.text == "user" && password.text == "password" {
            performSegueWithIdentifier("LoginSegue", sender: nil)
        } else {
        
            let alertView = UIAlertController(title: "Login Error", message: "Wrong login info. Please try again.", preferredStyle: .Alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .Default) { (action) in
                
                // ...
                
            }
            alertView.addAction(okAction)
            
            self.presentViewController(alertView, animated: true) {
                // ...
            }
            
        }

    }
    
    @IBAction func LoginLoggingInButton(sender: AnyObject) {
    }
    
    @IBAction func didEditUsername(sender: AnyObject) {
        
        if username.text == "" || password.text == "" {
            loginEnabledButton.enabled = false
            loginEnabledButton.hidden = true
            loginDisabledButton.hidden = false
            loginLoggingInButton.enabled = false
            loginLoggingInButton.hidden = true
        } else {
            loginEnabledButton.enabled = true
            loginEnabledButton.hidden = false
            loginDisabledButton.enabled = false
            loginDisabledButton.hidden = true
            loginLoggingInButton.enabled = false
            loginLoggingInButton.hidden = true
        }
    }
    
    var initialY: CGFloat!
    let offset: CGFloat = -50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginEnabledButton.enabled = false
        loginEnabledButton.hidden = true
        loginDisabledButton.enabled = false
        loginDisabledButton.hidden = false
        loginLoggingInButton.enabled = false
        loginLoggingInButton.hidden = true
        
        activityInd.hidden = true
        
        
        initialY = textfieldContainers.frame.origin.y
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBackground(sender: AnyObject) {
        textfieldContainers.endEditing(true)
    }

    func keyboardWillShow(notification: NSNotification!) {
        
        self.textfieldContainers.frame.origin = CGPoint(x: self.textfieldContainers.frame.origin.x, y: self.initialY + self.offset)
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        self.textfieldContainers.frame.origin = CGPoint(x: self.textfieldContainers.frame.origin.x, y: self.initialY)
        
    }
    
}
