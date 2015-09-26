//
//  RequestViewController.swift
//  Facebook
//
//  Created by Sebastian Drew on 9/17/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class RequestViewController: UIViewController {

    @IBOutlet weak var requestScrollView: UIScrollView!
    @IBOutlet weak var requestImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
         // requestScrollView.contentSize = CGSize(width: 320, height: 1200)
        
        requestScrollView.contentSize = requestImage.image!.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        requestScrollView.contentInset.top = 0
        requestScrollView.contentInset.bottom = 50
        requestScrollView.scrollIndicatorInsets.top = 0
        requestScrollView.scrollIndicatorInsets.bottom = 50
        
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
