//
//  MainRubricView.swift
//  PETPAT
//
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit


// Global Variables


var totalQuestionCount1  = 0,
    totalQuestionCount2  = 0,
    totalQuestionCount3  = 0,
    totalQuestionCount4  = 0,
    totalQuestionCount5  = 0,
    totalQuestionCount6  = 0,
    totalQuestionCount7  = 0,
    totalQuestionCount8  = 0,
    totalQuestionCount9  = 0,
    totalQuestionCount10 = 0,
    totalQuestionCount11 = 0,
    totalQuestionCount12 = 0,
    totalQuestionCount13 = 0,
    totalQuestionCount14 = 0,
    totalQuestionCount15 = 0


class MainRubricView: UIViewController {

    
    @IBOutlet weak var editLabelTextField: UITextField!
    
    var questionButtonLabels  = "",
        incrementButtonLabels = "",
        commentButtonLabels   = "",
        deleteButonLabels     = ""
    
    
    @IBOutlet weak var editLabelButton1: UIButton!
    @IBOutlet weak var editLabelButton2: UIButton!
    @IBOutlet weak var editLabelButton3: UIButton!
    @IBOutlet weak var editLabelButton4: UIButton!
    @IBOutlet weak var editLabelButton5: UIButton!
    @IBOutlet weak var editLabelButton6: UIButton!
    @IBOutlet weak var editLabelButton7: UIButton!
    @IBOutlet weak var editLabelButton8: UIButton!
    @IBOutlet weak var editLabelButton9: UIButton!
    @IBOutlet weak var editLabelButton10: UIButton!
    @IBOutlet weak var editLabelButton11: UIButton!
    @IBOutlet weak var editLabelButton12: UIButton!
    @IBOutlet weak var editLabelButton13: UIButton!
    @IBOutlet weak var editLabelButton14: UIButton!
    @IBOutlet weak var editLabelButton15: UIButton!
    
    @IBOutlet weak var questionLabel1: UILabel!
    @IBOutlet weak var questionLabel2: UILabel!
    @IBOutlet weak var questionLabel3: UILabel!
    @IBOutlet weak var questionLabel4: UILabel!
    @IBOutlet weak var questionLabel5: UILabel!
    @IBOutlet weak var questionLabel6: UILabel!
    @IBOutlet weak var questionLabel7: UILabel!
    @IBOutlet weak var questionLabel8: UILabel!
    @IBOutlet weak var questionLabel9: UILabel!
    @IBOutlet weak var questionLabel10: UILabel!
    @IBOutlet weak var questionLabel11: UILabel!
    @IBOutlet weak var questionLabel12: UILabel!
    @IBOutlet weak var questionLabel13: UILabel!
    @IBOutlet weak var questionLabel14: UILabel!
    @IBOutlet weak var questionLabel15: UILabel!
    
    @IBOutlet weak var countLabel1: UILabel!
    @IBOutlet weak var countLabel2: UILabel!
    @IBOutlet weak var countLabel3: UILabel!
    @IBOutlet weak var countLabel4: UILabel!
    @IBOutlet weak var countLabel5: UILabel!
    @IBOutlet weak var countLabel6: UILabel!
    @IBOutlet weak var countLabel7: UILabel!
    @IBOutlet weak var countLabel8: UILabel!
    @IBOutlet weak var countLabel9: UILabel!
    @IBOutlet weak var countLabel10: UILabel!
    @IBOutlet weak var countLabel11: UILabel!
    @IBOutlet weak var countLabel12: UILabel!
    @IBOutlet weak var countLabel13: UILabel!
    @IBOutlet weak var countLabel14: UILabel!
    @IBOutlet weak var countLabel15: UILabel!
    
    
    
    
    @IBAction func incrementCount(_ sender: UIButton)
    {
        incrementButtonLabels = sender.currentTitle!
        
        switch incrementButtonLabels {
            
            case "incrementButton1":
                if totalQuestionCount1 == 5 {
                    totalQuestionCount1 = 1
    
                } else {
                    totalQuestionCount1 += 1
                }
            
            countLabel1.text = String(totalQuestionCount1)
            
            case "incrementButton2":
            
                if totalQuestionCount2 == 5 {
                    totalQuestionCount2 = 1
                    
                } else {
                    totalQuestionCount2 += 1
                }
            
            countLabel2.text = String(totalQuestionCount2)
            
            case "incrementButton3":
            
                if totalQuestionCount3 == 5 {
                    totalQuestionCount3 = 1
                    
                } else {
                    totalQuestionCount3 += 1
                }
            
            countLabel3.text = String(totalQuestionCount3)
            
            case "incrementButton4":
            
                if totalQuestionCount4 == 5 {
                    totalQuestionCount4 = 1
                    
                } else {
                    totalQuestionCount4 += 1
                }
            
            countLabel4.text = String(totalQuestionCount4)
            
            case "incrementButton5":
            
                if totalQuestionCount5 == 5 {
                    totalQuestionCount5 = 1
                    
                } else {
                    totalQuestionCount5 += 1
                }
            
            countLabel5.text = String(totalQuestionCount5)
            
            case "incrementButton6":
            
                if totalQuestionCount6 == 5 {
                    totalQuestionCount6 = 1
                    
                } else {
                    totalQuestionCount6 += 1
                }
            
            countLabel6.text = String(totalQuestionCount6)
            
            case "incrementButton7":
            
                if totalQuestionCount7 == 5 {
                    totalQuestionCount7 = 1
                    
                } else {
                    totalQuestionCount7 += 1
                }
            
            countLabel7.text = String(totalQuestionCount7)
            
            case "incrementButton8":
            
                if totalQuestionCount8 == 5 {
                    totalQuestionCount8 = 1
                    
                } else {
                    totalQuestionCount8 += 1
                }
            
            countLabel8.text = String(totalQuestionCount8)
            
            case "incrementButton9":
            
                if totalQuestionCount9 == 5 {
                    totalQuestionCount9 = 1
                    
                } else {
                    totalQuestionCount9 += 1
                }
            
            countLabel9.text = String(totalQuestionCount9)
            
            case "incrementButton10":
            
                if totalQuestionCount10 == 5 {
                    totalQuestionCount10 = 1
                    
                } else {
                    totalQuestionCount10 += 1
                }
            
            countLabel10.text = String(totalQuestionCount10)
            
            case "incrementButton11":
            
                if totalQuestionCount11 == 5 {
                    totalQuestionCount11 = 1
                    
                } else {
                    totalQuestionCount11 += 1
                }
            
            countLabel11.text = String(totalQuestionCount11)
            
            case "incrementButton12":
            
                if totalQuestionCount12 == 5 {
                    totalQuestionCount12 = 1
                    
                } else {
                    totalQuestionCount12 += 1
                }
            
            countLabel12.text = String(totalQuestionCount12)
            
            case "incrementButton13":
            
                if totalQuestionCount13 == 5 {
                    totalQuestionCount13 = 1
                    
                } else {
                    totalQuestionCount13 += 1
                }
            
            countLabel13.text = String(totalQuestionCount13)
            
            case "incrementButton14":
            
                if totalQuestionCount14 == 5 {
                    totalQuestionCount14 = 1
                    
                } else {
                    totalQuestionCount14 += 1
                }
            
            countLabel14.text = String(totalQuestionCount14)
            
            case "incrementButton15":
            
                if totalQuestionCount15 == 5 {
                    totalQuestionCount15 = 1
                    
                } else {
                    totalQuestionCount15 += 1
                }
            
            countLabel15.text = String(totalQuestionCount15)
            
            
        default:
            print("Error in Increment Count Function - Main Rubric View")
        }
    }
    
    
    
    // MARK: Modal View Logic
    
    @IBOutlet weak var modalPopUpComment: UIView!
    @IBOutlet weak var modalPopUpCommentTextView: UITextView!
    
    
    
    @IBAction func popUpComment(_ sender: UIButton)
    {
        modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)
        
    }
    
    @IBAction func saveComment(_ sender: UIButton)
    {
        modalPopUpComment.transform = CGAffineTransform(translationX: -936, y: 200)
    }
    
    
    @IBAction func cancelAddComment(_ sender: UIButton)
    {
        modalPopUpComment.transform = CGAffineTransform(translationX: -936, y: 200)
    }
    
    
    
    @IBAction func deleteComment(_ sender: UIButton)
    {

    }
    
    
    
    
    
    
    // MARK: Long Press Edit Label Logic
    
    func editLabel1 (_ sender: UILongPressGestureRecognizer)
    {
        questionLabel1.text = editLabelTextField.text
    }
    func editLabel2 (_ sender: UILongPressGestureRecognizer) {
        questionLabel2.text = editLabelTextField.text
    }
    func editLabel3 (_ sender: UILongPressGestureRecognizer) {
        questionLabel3.text = editLabelTextField.text
    }
    func editLabel4 (_ sender: UILongPressGestureRecognizer) {
        questionLabel4.text = editLabelTextField.text
    }
    func editLabel5 (_ sender: UILongPressGestureRecognizer) {
        questionLabel5.text = editLabelTextField.text
    }
    func editLabel6 (_ sender: UILongPressGestureRecognizer) {
        questionLabel6.text = editLabelTextField.text
    }
    func editLabel7 (_ sender: UILongPressGestureRecognizer) {
        questionLabel7.text = editLabelTextField.text
    }
    func editLabel8 (_ sender: UILongPressGestureRecognizer) {
        questionLabel8.text = editLabelTextField.text
    }
    func editLabel9 (_ sender: UILongPressGestureRecognizer) {
        questionLabel9.text = editLabelTextField.text
    }
    func editLabel10 (_ sender: UILongPressGestureRecognizer) {
        questionLabel10.text = editLabelTextField.text
    }
    func editLabel11 (_ sender: UILongPressGestureRecognizer) {
        questionLabel11.text = editLabelTextField.text
    }
    func editLabel12 (_ sender: UILongPressGestureRecognizer) {
        questionLabel12.text = editLabelTextField.text
    }
    func editLabel13 (_ sender: UILongPressGestureRecognizer) {
        questionLabel13.text = editLabelTextField.text
    }
    func editLabel14 (_ sender: UILongPressGestureRecognizer) {
        questionLabel14.text = editLabelTextField.text
    }
    func editLabel15 (_ sender: UILongPressGestureRecognizer) {
        questionLabel15.text = editLabelTextField.text
    }
    
    
    
    @IBAction func saveRubricLabelsToUserDefaults(_ sender: UIButton)
    {
        UserDefaults.standard.set(questionLabel1.text, forKey: "questionLabel1")
//        UserDefaults.standard.set(questionLabel2.text, forKey: "questionLabel2")
        UserDefaults.standard.set(questionLabel3.text, forKey: "questionLabel3")
        UserDefaults.standard.set(questionLabel4.text, forKey: "questionLabel4")
        UserDefaults.standard.set(questionLabel5.text, forKey: "questionLabel5")
        UserDefaults.standard.set(questionLabel6.text, forKey: "questionLabel6")
        UserDefaults.standard.set(questionLabel7.text, forKey: "questionLabel7")
        UserDefaults.standard.set(questionLabel8.text, forKey: "questionLabel8")
        UserDefaults.standard.set(questionLabel9.text, forKey: "questionLabel9")
        UserDefaults.standard.set(questionLabel10.text, forKey: "questionLabel10")
        UserDefaults.standard.set(questionLabel11.text, forKey: "questionLabel11")
        UserDefaults.standard.set(questionLabel12.text, forKey: "questionLabel12")
        UserDefaults.standard.set(questionLabel13.text, forKey: "questionLabel13")
        UserDefaults.standard.set(questionLabel14.text, forKey: "questionLabel14")
        UserDefaults.standard.set(questionLabel15.text, forKey: "questionLabel15")
        
    }
    
    @IBAction func resetUserDefaults(_ sender: UIButton)
    {
        // Reset All User Defaults Keys/Values
        let appDomain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
        
        
        // Reset Label Values
        questionLabel1.text  = "Did instant activity start immediately? Did it extend beyond 2 1/2 minutes?"
        questionLabel2.text  = "Was instruction brief? (Under 60 seconds per episode, not including SI or Closure)"
        questionLabel3.text  = "Were tasks clear? (orient, sequence, examples, personalize, repeat, draw on experience)"
        questionLabel4.text  = "Was a quality teacher/student demonstration used?"
        questionLabel5.text  = "Were accurate/specifc learning cues used and were they clearly presented?"
        questionLabel6.text  = "Did students know what to do, how to practice & the goal orientation of the task?"
        questionLabel7.text  = "Did the teacher use proper management strategies?"
        questionLabel8.text  = "Did the teacher emphasize the proper learnable piece or skill theme? (content alignment)"
        questionLabel9.text  = "Did the teacher emphasize appropriate feedback?"
        questionLabel10.text = "Did the teacher work towards their teacher objective for the day?"
        questionLabel11.text = "Was the equipment set out ahead of time, spread out, and easily accessible?"
        questionLabel12.text = "Was there a clear intent to improve motor performance?"
        questionLabel13.text = "Were there ample practice tries and maximum activity?"
        questionLabel14.text = "Were the tasks presented appropriate for the experiential level of students?"
        questionLabel15.text = "Content development that contains extension, refinement & application tasks."
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // add stylistic conversions to modal view: 'popUpComment'
        
        
        
        let longPressGesture1 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel1))
        let longPressGesture2 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel2))
        let longPressGesture3 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel3))
        let longPressGesture4 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel4))
        let longPressGesture5 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel5))
        let longPressGesture6 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel6))
        let longPressGesture7 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel7))
        let longPressGesture8 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel8))
        let longPressGesture9 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel9))
        let longPressGesture10 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel10))
        let longPressGesture11 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel11))
        let longPressGesture12 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel12))
        let longPressGesture13 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel13))
        let longPressGesture14 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel14))
        let longPressGesture15 = UILongPressGestureRecognizer(target: self, action: #selector(MainRubricView.editLabel15))
        
        
        self.editLabelButton1.addGestureRecognizer(longPressGesture1)
        self.editLabelButton2.addGestureRecognizer(longPressGesture2)
        self.editLabelButton3.addGestureRecognizer(longPressGesture3)
        self.editLabelButton4.addGestureRecognizer(longPressGesture4)
        self.editLabelButton5.addGestureRecognizer(longPressGesture5)
        self.editLabelButton6.addGestureRecognizer(longPressGesture6)
        self.editLabelButton7.addGestureRecognizer(longPressGesture7)
        self.editLabelButton8.addGestureRecognizer(longPressGesture8)
        self.editLabelButton9.addGestureRecognizer(longPressGesture9)
        self.editLabelButton10.addGestureRecognizer(longPressGesture10)
        self.editLabelButton11.addGestureRecognizer(longPressGesture11)
        self.editLabelButton12.addGestureRecognizer(longPressGesture12)
        self.editLabelButton13.addGestureRecognizer(longPressGesture13)
        self.editLabelButton14.addGestureRecognizer(longPressGesture14)
        self.editLabelButton15.addGestureRecognizer(longPressGesture15)

    }

    override func viewDidAppear(_ animated: Bool)
    {
        if let val = UserDefaults.standard.object(forKey: "questionLabel1") as? String
        {
            questionLabel1.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel2") as? String
        {
            questionLabel2.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel3") as? String
        {
            questionLabel3.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel4") as? String
        {
            questionLabel4.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel5") as? String
        {
            questionLabel5.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel6") as? String
        {
            questionLabel6.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel7") as? String
        {
            questionLabel7.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel8") as? String
        {
            questionLabel8.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel9") as? String
        {
            questionLabel9.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel10") as? String
        {
            questionLabel10.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel11") as? String
        {
            questionLabel11.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel12") as? String
        {
            questionLabel12.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel13") as? String
        {
            questionLabel13.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel14") as? String
        {
            questionLabel14.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "questionLabel15") as? String
        {
            questionLabel15.text = val
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
