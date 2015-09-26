//
//  NotificationsViewController.swift
//  Facebook
//
//  Created by Sebastian Drew on 9/17/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController {

    @IBOutlet weak var notificationsScrollView: UIScrollView!
    @IBOutlet weak var notificationsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // notificationsScrollView.contentSize = CGSize(width: 320, height: 800)
        
        notificationsScrollView.contentSize = notificationsImage.image!.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        notificationsScrollView.contentInset.top = 0
        notificationsScrollView.contentInset.bottom = 50
        notificationsScrollView.scrollIndicatorInsets.top = 0
        notificationsScrollView.scrollIndicatorInsets.bottom = 50
        
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
