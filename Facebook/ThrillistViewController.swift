//
//  ThrillistViewController.swift
//  Facebook
//
//  Created by Sebastian Drew on 9/17/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class ThrillistViewController: UIViewController {

    @IBOutlet weak var thrillistScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        thrillistScrollView.contentSize = CGSize(width: 320, height: 1210)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func detailBackDidTouch(sender: AnyObject) {
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        thrillistScrollView.contentInset.top = 0
        thrillistScrollView.contentInset.bottom = 50
        thrillistScrollView.scrollIndicatorInsets.top = 0
        thrillistScrollView.scrollIndicatorInsets.bottom = 50
        
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
