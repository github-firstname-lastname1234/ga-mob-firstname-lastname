//
//  PJWMyProfileViewController.swift
//  Profile
//
//  Created by Phil on 28/02/2015.
//  Copyright (c) 2015 ArgeniOS. All rights reserved.
//

import UIKit

class PJWMyProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBAction func unwindToMyProfileSegue( segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let imageWidth = self.profileImageView.frame.size.height
        profileImageView.layer.cornerRadius = imageWidth * 0.5
        profileImageView.layer.borderWidth = 5
        profileImageView.layer.borderColor = UIColor(white: 1.0, alpha: 0.5).CGColor
        
        profileImageView.clipsToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
    
        coordinator.animateAlongsideTransition({ (context: UIViewControllerTransitionCoordinatorContext!) -> Void in
            
            let imageWidth = self.profileImageView.frame.size.width
            self.profileImageView.layer.cornerRadius = imageWidth * 0.5
            
            }, completion: { (context: UIViewControllerTransitionCoordinatorContext!) -> Void in
                
                // Run once rotation animation has completed
        })
    }
}
