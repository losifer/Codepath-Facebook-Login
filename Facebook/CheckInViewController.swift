//
//  CheckInViewController.swift
//  Facebook
//
//  Created by Sebastian Drew on 9/17/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class CheckInViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonDidTouch(sender: AnyObject) {
        
        // navigationController?.popViewControllerAnimated(true)
        dismissViewControllerAnimated(true, completion: nil)
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
