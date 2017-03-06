//
//  RubricMainViewController.swift
//  PETPAT
//
//  Created by Kyle on 3/3/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

class RubricMainViewController: UIViewController {

    @IBOutlet weak var popUpComment: UIView!
    
    
    @IBAction func showCommentPopUp(_ sender: UIButton) {
        
        popUpComment.transform = CGAffineTransform(translationX: 936, y: -200)
        
    }
    
    @IBAction func closeCommentPopUp(_ sender: UIButton) {
        
        popUpComment.transform = CGAffineTransform(translationX: -936, y: 200)

    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        popUpComment.layer.cornerRadius = 10
        popUpComment.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
