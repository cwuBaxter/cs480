//
//  SecondViewController.swift
//  PETPAT
//
//  Created by Kyle on 2/8/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit
import Firebase

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = String(totalTime1)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func swipeToTimerView(_ sender: UISwipeGestureRecognizer)
    {
        performSegue(withIdentifier: "rubricToTimer", sender: self)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
