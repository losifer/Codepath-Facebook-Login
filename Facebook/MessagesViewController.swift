//
//  MessagesViewController.swift
//  Facebook
//
//  Created by Sebastian Drew on 9/17/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController {

    @IBOutlet weak var messagesScrollView: UIScrollView!
    @IBOutlet weak var messagesImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messagesScrollView.contentSize = messagesImage.image!.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        messagesScrollView.contentInset.top = 0
        messagesScrollView.contentInset.bottom = 50
        messagesScrollView.scrollIndicatorInsets.top = 0
        messagesScrollView.scrollIndicatorInsets.bottom = 50
        
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
