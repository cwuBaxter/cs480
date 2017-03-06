//
//  TimerSecondaryViewController.swift
//  PETPAT
//
//  Created by Kyle on 3/3/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

class TimerSecondaryViewController: UIViewController {

    
    @IBOutlet weak var labelTest: UILabel!
    @IBOutlet weak var labelTest2: UILabel!
    @IBOutlet weak var labelTest3: UILabel!
    @IBOutlet weak var labelTest4: UILabel!
    
    @IBOutlet weak var longPressButtonTest: UIButton!
    @IBOutlet weak var longPressButtonTest2: UIButton!
    
    var timerButtonLabels = ""
    
    
    @IBAction func longPressAction2(_ sender: UILongPressGestureRecognizer) {
        labelTest3.text = "pls"
    }
    
    @IBAction func tapPressAction2(_ sender: UIButton) {
        labelTest4.text = "help me"
    }
    
    @IBAction func longPressAction(_ sender: UILongPressGestureRecognizer) {
        
            labelTest.text = "man idek"
    }
    
    @IBAction func tapPressAction(_ sender: UIButton) {
        
        labelTest2.text = "yay"
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(TimerSecondaryViewController.longPressAction(_:)))
        
        let longPressGesture2 = UILongPressGestureRecognizer(target: self, action: #selector(TimerSecondaryViewController.longPressAction2(_:)))
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(TimerSecondaryViewController.tapPressAction(_:)))
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(TimerSecondaryViewController.tapPressAction2(_:)))
        
        
        self.longPressButtonTest2.addGestureRecognizer(longPressGesture2)
        
        self.longPressButtonTest2.addGestureRecognizer(tapGesture2)
        
        
        self.longPressButtonTest.addGestureRecognizer(longPressGesture)
        
        self.longPressButtonTest.addGestureRecognizer(tapGesture)
    }

}
