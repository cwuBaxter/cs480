//
//  ModalCommentViewController.swift
//  PETPAT
//
//  Created by Kyle on 2/9/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

class ModalCommentViewController: UIViewController {

    
    @IBOutlet weak var modalCommentPopUpView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        modalCommentPopUpView.layer.cornerRadius = 15
        modalCommentPopUpView.layer.masksToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveModalPopup(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeModalPopup(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
