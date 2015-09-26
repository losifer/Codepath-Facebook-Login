
//
//  FeedViewController.swift
//  Facebook
//
//  Created by Sebastian Drew on 9/17/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

   @IBOutlet weak var feedScrollView: UIScrollView!
   @IBOutlet weak var feedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // feedScrollView.contentSize = CGSize(width: 320, height: 1070)
        
        feedScrollView.contentSize = feedImage.image!.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        feedScrollView.contentInset.top = 0
        feedScrollView.contentInset.bottom = 50
        feedScrollView.scrollIndicatorInsets.top = 0
        feedScrollView.scrollIndicatorInsets.bottom = 50
        
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
