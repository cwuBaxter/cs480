//
//  ViewController.swift
//  PETPAT
//
//  Created by Kyle on 2/8/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

    // GLOBAL VARIABLES

    // time counters
    var totalTime1 =  0,
        totalTime2 =  0,
        totalTime3 =  0,
        totalTime4 =  0,
        totalTime5 =  0,
        totalTime6 =  0,
        totalTime7 =  0,
        totalTime8 =  0,
        totalTime9 =  0,
        totalTime10 = 0,
        totalTime11 = 0,
        totalTime12 = 0,
        totalTime13 = 0,
        totalTime14 = 0,
        totalTime15 = 0

    // increment counters
    var count1 = 0,
        count2 = 0,
        count3 = 0,
        count4 = 0,
        count5 = 0,
        count6 = 0,
        count7 = 0,
        count8 = 0,
        count9 = 0

class ViewController: UIViewController {
    
    

    // timer buttons
    
    @IBOutlet weak var timerButton1: UIButton!
    
    // stopper buttons
    
    @IBOutlet weak var stopButton1: UIButton!
    
    
    
    
    
    // timers
    var timer1 =  Timer(),
        timer2 =  Timer(),
        timer3 =  Timer(),
        timer4 =  Timer(),
        timer5 =  Timer(),
        timer6 =  Timer(),
        timer7 =  Timer(),
        timer8 =  Timer(),
        timer9 =  Timer(),
        timer10 = Timer(),
        timer11 = Timer(),
        timer12 = Timer(),
        timer13 = Timer(),
        timer14 = Timer(),
        timer15 = Timer()
    
    // holds button labels
    var timedBehavior = ""
    var stopButtons = ""
    var incrementButtons = ""
    var decrementButtons = ""
    
    
    
    @IBOutlet weak var timeLabel1: UILabel!
    @IBOutlet weak var timeLabel2: UILabel!
    @IBOutlet weak var timeLabel3: UILabel!
    @IBOutlet weak var timeLabel4: UILabel!
    @IBOutlet weak var timeLabel5: UILabel!
    @IBOutlet weak var timeLabel6: UILabel!
    @IBOutlet weak var timeLabel7: UILabel!
    @IBOutlet weak var timeLabel8: UILabel!
    @IBOutlet weak var timeLabel9: UILabel!
    @IBOutlet weak var timeLabel10: UILabel!
    @IBOutlet weak var timeLabel11: UILabel!
    @IBOutlet weak var timeLabel12: UILabel!
    @IBOutlet weak var timeLabel13: UILabel!
    @IBOutlet weak var timeLabel14: UILabel!
    @IBOutlet weak var timeLabel15: UILabel!
    
    @IBOutlet weak var countLabel1: UILabel!
    @IBOutlet weak var countLabel2: UILabel!
    @IBOutlet weak var countLabel3: UILabel!
    @IBOutlet weak var countLabel4: UILabel!
    @IBOutlet weak var countLabel5: UILabel!
    @IBOutlet weak var countLabel6: UILabel!
    @IBOutlet weak var countLabel7: UILabel!
    @IBOutlet weak var countLabel8: UILabel!
    @IBOutlet weak var countLabel9: UILabel!
    
    
    


    @IBAction func incrementButton(_ sender: UIButton) {
        
        incrementButtons = sender.currentTitle!
        
        switch incrementButtons {
            
            case "Specific Feedback":
                count1 += 1
                countLabel1.text = String(count1)
            
            case "General Motivation":
                count2 += 1
                countLabel2.text = String(count2)
            
            case "Managerial Class Redirect":
                count3 += 1
                countLabel3.text = String(count3)
            
            case "Non Back To Wall":
                count4 += 1
                countLabel4.text = String(count4)
            
            case "Desists":
                count5 += 1
                countLabel5.text = String(count5)
            
            case "Used Student Name":
                count6 += 1
                countLabel6.text = String(count6)
            
            case "Negative Comments":
                count7 += 1
                countLabel7.text = String(count7)
            
            case "Demonstrations":
                count8 += 1
                countLabel8.text = String(count8)
            
            case "Started New Task":
                count9 += 1
                countLabel9.text = String(count9)
            
        default:
                print("Error in Increment Button Func")
            
        }
    }
    
    
    
    @IBAction func decrementButton(_ sender: UIButton) {
        
        decrementButtons = sender.currentTitle!
        
        switch decrementButtons {
            
            case "decBtn1":
                count1 -= 1
                countLabel1.text = String(count1)
            
            case "decBtn2":
                count2 -= 1
                countLabel2.text = String(count2)
            
            case "decBtn3":
                count3 -= 1
                countLabel3.text = String(count3)
            
            case "decBtn4":
                count4 -= 1
                countLabel4.text = String(count4)
            
            case "decBtn5":
                count5 -= 1
                countLabel5.text = String(count5)
            
            case "decBtn6":
                count6 -= 1
                countLabel6.text = String(count6)
            
            case "decBtn7":
                count7 -= 1
                countLabel7.text = String(count7)
            
            case "decBtn8":
                count8 -= 1
                countLabel8.text = String(count8)
            
            case "decBtn9":
                count9 -= 1
                countLabel9.text = String(count9)
            
        default:
                print("Error in Decrement Button Func")
        }
        
    }
    
    
    
    
    @IBAction func stopButton(_ sender: UIButton) {
        
        stopButtons = sender.currentTitle!
        
        switch stopButtons {
            
            case "stpBtn1":
                timer1.invalidate()
            case "stpBtn2":
                timer2.invalidate()
            case "stpBtn3":
                timer3.invalidate()
            case "stpBtn4":
                timer4.invalidate()
            case "stpBtn5":
                timer5.invalidate()
            case "stpBtn6":
                timer6.invalidate()
            case "stpBtn7":
                timer7.invalidate()
            case "stpBtn8":
                timer8.invalidate()
            case "stpBtn9":
                timer9.invalidate()
            case "stpBtn10":
                timer10.invalidate()
            case "stpBtn11":
                timer11.invalidate()
            case "stpBtn12":
                timer12.invalidate()
            case "stpBtn13":
                timer13.invalidate()
            case "stpBtn14":
                timer14.invalidate()
            case "stpBtn15":
                timer15.invalidate()
            
        default:
            print("Error in Stop Button Func")
            
        }
    }
    
    
    @IBAction func timerButton(_ sender: UIButton) {
        
        timedBehavior = sender.currentTitle!
        print ("touched \(timedBehavior) button")
        print ("sender: \(sender) !")
        
        switch timedBehavior {
            case "Introduction":
                timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
            
            case "Observing Stationary":
                timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action2), userInfo: nil, repeats: true)
            
            case "Observing Moving":
                timer3 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action3), userInfo: nil, repeats: true)
            
            case "Providing Feedback":
                timer4 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action4), userInfo: nil, repeats: true)
            
            case "Managing":
                timer5 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action5), userInfo: nil, repeats: true)
            
            case "Instructing Episode":
                timer6 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action6), userInfo: nil, repeats: true)
            
            case "Non-Related":
                timer7 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action7), userInfo: nil, repeats: true)
            
            case "Off Task Behaviors":
                timer8 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action8), userInfo: nil, repeats: true)
            
            case "Closure":
                timer9 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action9), userInfo: nil, repeats: true)
            
            case "Activity Only":
                timer10 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action10), userInfo: nil, repeats: true)
            
            case "Engaged":
                timer11 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action11), userInfo: nil, repeats: true)
            
            case "Transitioning":
                timer12 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action12), userInfo: nil, repeats: true)
            
            case "Management":
                timer13 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action13), userInfo: nil, repeats: true)
            
            case "Waiting":
                timer14 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action14), userInfo: nil, repeats: true)
            
            case "Instruction":
                timer15 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action15), userInfo: nil, repeats: true)
            
            default:
                print("Error in Timer Button Func")
        }

    }
    
    
    
    
    
    
    
    
    // Start Various Timers
    func action()
    {
        print("still running \(totalTime1)")
        totalTime1 += 1
        timeLabel1.text = String(totalTime1)
//        print("Action 1 - totalTime1 = \(totalTime1)!")
    }
    
    func action2()
    {
        totalTime2 += 1
        timeLabel2.text = String(totalTime2)
//        print("Action 2 - totalTime2 = \(totalTime2)!")
    }
    
    func action3()
    {
        totalTime3 += 1
        timeLabel3.text = String(totalTime3)
//        print("Action 3 - totalTime3 = \(totalTime3)!")
    }
    
    func action4()
    {
        totalTime4 += 1
        timeLabel4.text = String(totalTime4)
//        print("Action 4 - totalTime4 = \(totalTime4)!")
    }
    
    func action5()
    {
        totalTime5 += 1
        timeLabel5.text = String(totalTime5)
//        print("Action 5 - totalTime5 = \(totalTime5)!")
    }
    
    func action6()
    {
        totalTime6 += 1
        timeLabel6.text = String(totalTime6)
//        print("Action 6 - totalTime6 = \(totalTime6)!")
    }
    
    func action7()
    {
        totalTime7 += 1
        timeLabel7.text = String(totalTime7)
//        print("Action 7 - totalTime7 = \(totalTime7)!")
    }
    
    func action8()
    {
        totalTime8 += 1
        timeLabel8.text = String(totalTime8)
//        print("Action 8 - totalTime8 = \(totalTime8)!")
    }
    
    func action9()
    {
        totalTime9 += 1
        timeLabel9.text = String(totalTime9)
//        print("Action 9 - totalTime9 = \(totalTime9)!")
    }
    
    func action10()
    {
        totalTime10 += 1
        timeLabel10.text = String(totalTime10)
//        print("Action 10 - totalTime10 = \(totalTime10)!")
    }
    
    func action11()
    {
        totalTime11 += 1
        timeLabel11.text = String(totalTime11)
//        print("Action 11 - totalTime11 = \(totalTime11)!")
    }
    
    func action12()
    {
        totalTime12 += 1
        timeLabel12.text = String(totalTime12)
//        print("Action 12 - totalTime12 = \(totalTime12)!")
    }
    
    func action13()
    {
        totalTime13 += 1
        timeLabel13.text = String(totalTime13)
//        print("Action 13 - totalTime13 = \(totalTime13)!")
    }
    
    func action14()
    {
        totalTime14 += 1
        timeLabel14.text = String(totalTime14)
//        print("Action 14 - totalTime14 = \(totalTime14)!")
    }
    
    func action15()
    {
        totalTime15 += 1
        timeLabel15.text = String(totalTime15)
//        print("Action 15 - totalTime15 = \(totalTime15)!")
    }
    
    
    
    
    
    
    //SEGUES
    
    
    @IBAction func timerToRubricSegue(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "timerToRubric", sender: self)
    }
    
    @IBAction func timerToGeneratorSegue(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "timerToGenerator", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timeLabel1.text = String(totalTime1)
        timeLabel2.text = String(totalTime2)
        timeLabel3.text = String(totalTime3)
        timeLabel4.text = String(totalTime4)
        timeLabel5.text = String(totalTime5)
        timeLabel6.text = String(totalTime6)
        timeLabel7.text = String(totalTime7)
        timeLabel8.text = String(totalTime8)
        timeLabel9.text = String(totalTime9)
        timeLabel10.text = String(totalTime10)
        timeLabel11.text = String(totalTime11)
        timeLabel12.text = String(totalTime12)
        timeLabel13.text = String(totalTime13)
        timeLabel14.text = String(totalTime14)
        timeLabel15.text = String(totalTime15)
        
        if timeLabel1.text! > String(0) {
            print("okay ill try dad")
            
//            stopButton1.sendActions(for: UIControlEvents.touchUpInside)
//            timerButton1.sendActions(for: UIControlEvents.touchUpInside)
            
        } else {
            print(timeLabel1.text! > String(0))
        }
        
        
        countLabel1.text = String(count1)
        countLabel2.text = String(count2)
        countLabel3.text = String(count3)
        countLabel4.text = String(count4)
        countLabel5.text = String(count5)
        countLabel6.text = String(count6)
        countLabel7.text = String(count7)
        countLabel8.text = String(count8)
        countLabel9.text = String(count9)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
}

