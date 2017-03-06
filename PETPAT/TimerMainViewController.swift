//
//  TimerMainViewController.swift
//  PETPAT
//
//  Created by Kyle on 3/1/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit


    // Global Vars

    // Time Counters

    var mainTotalTime1  = 0,
        mainTotalTime2  = 0,
        mainTotalTime3  = 0,
        mainTotalTime4  = 0,
        mainTotalTime5  = 0,
        mainTotalTime6  = 0,
        mainTotalTime7  = 0,
        mainTotalTime8  = 0,
        mainTotalTime9  = 0,
        mainTotalTime10 = 0,
        mainTotalTime11 = 0,
        mainTotalTime12 = 0,
        mainTotalTime13 = 0,
        mainTotalTime14 = 0,
        mainTotalTime15 = 0

    // Increment Counters

    var mainCount1  = 0,
        mainCount2  = 0,
        mainCount3  = 0,
        mainCount4  = 0,
        mainCount5  = 0,
        mainCount6  = 0,
        mainCount7  = 0,
        mainCount8  = 0,
        mainCount9  = 0,
        mainCount10 = 0




class TimerMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Timer Objs
    var mainTimer1  = Timer(),
        mainTimer2  = Timer(),
        mainTimer3  = Timer(),
        mainTimer4  = Timer(),
        mainTimer5  = Timer(),
        mainTimer6  = Timer(),
        mainTimer7  = Timer(),
        mainTimer8  = Timer(),
        mainTimer9  = Timer(),
        mainTimer10 = Timer(),
        mainTimer11 = Timer(),
        mainTimer12 = Timer(),
        mainTimer13 = Timer(),
        mainTimer14 = Timer(),
        mainTimer15 = Timer()
    
    // Button Label Placeholders for Switch Cases
    var timerButtonLabels = ""
    var stopButtonLabels  = ""
    var incrementButtonLabels = ""
    var decrementButtonLabels = ""
    
    
    // Start Timer Labels
    @IBOutlet weak var startTimerLabel1: UILabel!
    @IBOutlet weak var startTimerLabel2: UILabel!
    @IBOutlet weak var startTimerLabel3: UILabel!
    @IBOutlet weak var startTimerLabel4: UILabel!
    @IBOutlet weak var startTimerLabel5: UILabel!
    @IBOutlet weak var startTimerLabel6: UILabel!
    @IBOutlet weak var startTimerLabel7: UILabel!
    @IBOutlet weak var startTimerLabel8: UILabel!
    @IBOutlet weak var startTimerLabel9: UILabel!
    @IBOutlet weak var startTimerLabel10: UILabel!
    @IBOutlet weak var startTimerLabel11: UILabel!
    @IBOutlet weak var startTimerLabel12: UILabel!
    @IBOutlet weak var startTimerLabel13: UILabel!
    @IBOutlet weak var startTimerLabel14: UILabel!
    @IBOutlet weak var startTimerLabel15: UILabel!
    
    // Start Timer Buttons
    @IBOutlet weak var mainStartBtn1: UIButton!
    @IBOutlet weak var mainStartBtn2: UIButton!
    @IBOutlet weak var mainStartBtn3: UIButton!
    @IBOutlet weak var mainStartBtn4: UIButton!
    @IBOutlet weak var mainStartBtn5: UIButton!
    @IBOutlet weak var mainStartBtn6: UIButton!
    @IBOutlet weak var mainStartBtn7: UIButton!
    @IBOutlet weak var mainStartBtn8: UIButton!
    @IBOutlet weak var mainStartBtn9: UIButton!
    @IBOutlet weak var mainStartBtn10: UIButton!
    @IBOutlet weak var mainStartBtn11: UIButton!
    @IBOutlet weak var mainStartBtn12: UIButton!
    @IBOutlet weak var mainStartBtn13: UIButton!
    @IBOutlet weak var mainStartBtn14: UIButton!
    @IBOutlet weak var mainStartBtn15: UIButton!
    
    
    
    
    // Start Timer Function
    
    @IBAction func startTimer(_ sender: UIButton)
    {
        timerButtonLabels = sender.currentTitle!
        
        switch timerButtonLabels {
            
            case "mainStartBtn1":
                enableGroupOneTimers()
                mainStartBtn1.isEnabled = false
                invalidateGroupOneTimers()
                mainTimer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action), userInfo: nil, repeats: true)
            
            case "mainStartBtn2":
                enableGroupOneTimers()
                mainStartBtn2.isEnabled = false
                invalidateGroupOneTimers()
                mainTimer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action2), userInfo: nil, repeats: true)
            
            case "mainStartBtn3":
                enableGroupOneTimers()
                mainStartBtn3.isEnabled = false
                invalidateGroupOneTimers()
                mainTimer3 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action3), userInfo: nil, repeats: true)
            
            case "mainStartBtn4":
                enableGroupOneTimers()
                mainStartBtn4.isEnabled = false
                invalidateGroupOneTimers()
                mainTimer4 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action4), userInfo: nil, repeats: true)
            
            case "mainStartBtn5":
                enableGroupOneTimers()
                mainStartBtn5.isEnabled = false
                invalidateGroupOneTimers()
                mainTimer5 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action5), userInfo: nil, repeats: true)
            
            case "mainStartBtn6":
                enableGroupOneTimers()
                mainStartBtn6.isEnabled = false
                invalidateGroupOneTimers()
                mainTimer6 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action6), userInfo: nil, repeats: true)
            
            case "mainStartBtn7":
                enableGroupOneTimers()
                mainStartBtn7.isEnabled = false
                invalidateGroupOneTimers()
                mainTimer7 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action7), userInfo: nil, repeats: true)
            
            case "mainStartBtn8":
                enableGroupOneTimers()
                mainStartBtn8.isEnabled = false
                invalidateGroupOneTimers()
                mainTimer8 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action8), userInfo: nil, repeats: true)
            
            case "mainStartBtn9":
                enableGroupOneTimers()
                mainStartBtn9.isEnabled = false
                invalidateGroupOneTimers()
                mainTimer9 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action9), userInfo: nil, repeats: true)
            
            case "mainStartBtn10":
                enableGroupTwoTimers()
                mainStartBtn10.isEnabled = false
                invalidateGroupTwoTimers()
                mainTimer10 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action10), userInfo: nil, repeats: true)
            
            case "mainStartBtn11":
                enableGroupTwoTimers()
                mainStartBtn11.isEnabled = false
                invalidateGroupTwoTimers()
                mainTimer11 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action11), userInfo: nil, repeats: true)
            
            case "mainStartBtn12":
                enableGroupTwoTimers()
                mainStartBtn12.isEnabled = false
                invalidateGroupTwoTimers()
                mainTimer12 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action12), userInfo: nil, repeats: true)
            
            case "mainStartBtn13":
                enableGroupTwoTimers()
                mainStartBtn13.isEnabled = false
                invalidateGroupTwoTimers()
                mainTimer13 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action13), userInfo: nil, repeats: true)
            
            case "mainStartBtn14":
                enableGroupTwoTimers()
                mainStartBtn14.isEnabled = false
                invalidateGroupTwoTimers()
                mainTimer14 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action14), userInfo: nil, repeats: true)
            
            case "mainStartBtn15":
                enableGroupTwoTimers()
                mainStartBtn15.isEnabled = false
                invalidateGroupTwoTimers()
                mainTimer15 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerMainViewController.action15), userInfo: nil, repeats: true)
            
        default:
                print("Error In Main Start Timer Function")
        }
    }
    
    // Timer Action Functions
    
    func action() {
        mainTotalTime1 += 1
        stopTimerLabel1.text = convertToTimestamp(time: mainTotalTime1)
    }
    func action2() {
        mainTotalTime2 += 1
        stopTimerLabel2.text = convertToTimestamp(time: mainTotalTime2)
    }
    func action3() {
        mainTotalTime3 += 1
        stopTimerLabel3.text = convertToTimestamp(time: mainTotalTime3)
    }
    func action4() {
        mainTotalTime4 += 1
        stopTimerLabel4.text = convertToTimestamp(time: mainTotalTime4)
    }
    func action5() {
        mainTotalTime5 += 1
        stopTimerLabel5.text = convertToTimestamp(time: mainTotalTime5)
    }
    func action6() {
        mainTotalTime6 += 1
        stopTimerLabel6.text = convertToTimestamp(time: mainTotalTime6)
    }
    func action7() {
        mainTotalTime7 += 1
        stopTimerLabel7.text = convertToTimestamp(time: mainTotalTime7)
    }
    func action8() {
        mainTotalTime8 += 1
        stopTimerLabel8.text = convertToTimestamp(time: mainTotalTime8)
    }
    func action9() {
        mainTotalTime9 += 1
        stopTimerLabel9.text = convertToTimestamp(time: mainTotalTime9)
    }
    func action10() {
        mainTotalTime10 += 1
        stopTimerLabel10.text = convertToTimestamp(time: mainTotalTime10)
    }
    func action11() {
        mainTotalTime11 += 1
        stopTimerLabel11.text = convertToTimestamp(time: mainTotalTime11)
    }
    func action12() {
        mainTotalTime12 += 1
        stopTimerLabel12.text = convertToTimestamp(time: mainTotalTime12)
    }
    func action13() {
        mainTotalTime13 += 1
        stopTimerLabel13.text = convertToTimestamp(time: mainTotalTime13)
    }
    func action14() {
        mainTotalTime14 += 1
        stopTimerLabel14.text = convertToTimestamp(time: mainTotalTime14)
    }
    func action15() {
        mainTotalTime15 += 1
        stopTimerLabel15.text = convertToTimestamp(time: mainTotalTime15)
    }
    
    
    // Stop Timer Labels
    @IBOutlet weak var stopTimerLabel1: UILabel!
    @IBOutlet weak var stopTimerLabel2: UILabel!
    @IBOutlet weak var stopTimerLabel3: UILabel!
    @IBOutlet weak var stopTimerLabel4: UILabel!
    @IBOutlet weak var stopTimerLabel5: UILabel!
    @IBOutlet weak var stopTimerLabel6: UILabel!
    @IBOutlet weak var stopTimerLabel7: UILabel!
    @IBOutlet weak var stopTimerLabel8: UILabel!
    @IBOutlet weak var stopTimerLabel9: UILabel!
    @IBOutlet weak var stopTimerLabel10: UILabel!
    @IBOutlet weak var stopTimerLabel11: UILabel!
    @IBOutlet weak var stopTimerLabel12: UILabel!
    @IBOutlet weak var stopTimerLabel13: UILabel!
    @IBOutlet weak var stopTimerLabel14: UILabel!
    @IBOutlet weak var stopTimerLabel15: UILabel!
    
    
    // Stop Timer Buttons
    
    
    // Stop Timer Function
    
    @IBAction func stopTimer(_ sender: UIButton)
    {
        stopButtonLabels = sender.currentTitle!
        
        switch stopButtonLabels {
            
            case "mainStpBtn1":
                mainTimer1.invalidate()
                mainStartBtn1.isEnabled = true
            case "mainStpBtn2":
                mainTimer2.invalidate()
                mainStartBtn2.isEnabled = true
            case "mainStpBtn3":
                mainTimer3.invalidate()
                mainStartBtn3.isEnabled = true
            case "mainStpBtn4":
                mainTimer4.invalidate()
                mainStartBtn4.isEnabled = true
            case "mainStpBtn5":
                mainTimer5.invalidate()
                mainStartBtn5.isEnabled = true
            case "mainStpBtn6":
                mainTimer6.invalidate()
                mainStartBtn6.isEnabled = true
            case "mainStpBtn7":
                mainTimer7.invalidate()
                mainStartBtn7.isEnabled = true
            case "mainStpBtn8":
                mainTimer8.invalidate()
                mainStartBtn8.isEnabled = true
            case "mainStpBtn9":
                mainTimer9.invalidate()
                mainStartBtn9.isEnabled = true
            case "mainStpBtn10":
                mainTimer10.invalidate()
                mainStartBtn10.isEnabled = true
            case "mainStpBtn11":
                mainTimer11.invalidate()
                mainStartBtn11.isEnabled = true
            case "mainStpBtn12":
                mainTimer12.invalidate()
                mainStartBtn12.isEnabled = true
            case "mainStpBtn13":
                mainTimer13.invalidate()
                mainStartBtn13.isEnabled = true
            case "mainStpBtn14":
                mainTimer14.invalidate()
                mainStartBtn14.isEnabled = true
            case "mainStpBtn15":
                mainTimer15.invalidate()
                mainStartBtn15.isEnabled = true
            
        default:
            print("Error In Stop Timer Function")
            
        }
    }
    
    
    // Increment Count Labels
    
    @IBOutlet weak var incrementCountLabel1: UILabel!
    @IBOutlet weak var incrementCountLabel2: UILabel!
    @IBOutlet weak var incrementCountLabel3: UILabel!
    @IBOutlet weak var incrementCountLabel4: UILabel!
    @IBOutlet weak var incrementCountLabel5: UILabel!
    @IBOutlet weak var incrementCountLabel6: UILabel!
    @IBOutlet weak var incrementCountLabel7: UILabel!
    @IBOutlet weak var incrementCountLabel8: UILabel!
    @IBOutlet weak var incrementCountLabel9: UILabel!
    @IBOutlet weak var incrementCountLabel10: UILabel!
    
    
    
    // Increment Count Buttons
    
    @IBAction func incrementCount(_ sender: UIButton)
    {
        incrementButtonLabels = sender.currentTitle!
        
        switch incrementButtonLabels {
            
            case "mainIncrBtn1":
                mainCount1 += 1
                decrementCountLabel1.text = String(mainCount1)
            
            case "mainIncrBtn2":
                mainCount2 += 1
                decrementCountLabel2.text = String(mainCount2)
            
            case "mainIncrBtn3":
                mainCount3 += 1
                decrementCountLabel3.text = String(mainCount3)
            
            case "mainIncrBtn4":
                mainCount4 += 1
                decrementCountLabel4.text = String(mainCount4)
            
            case "mainIncrBtn5":
                mainCount5 += 1
                decrementCountLabel5.text = String(mainCount5)
            
            case "mainIncrBtn6":
                mainCount6 += 1
                decrementCountLabel6.text = String(mainCount6)
            
            case "mainIncrBtn7":
                mainCount7 += 1
                decrementCountLabel7.text = String(mainCount7)
            
            case "mainIncrBtn8":
                mainCount8 += 1
                decrementCountLabel8.text = String(mainCount8)
            
            case "mainIncrBtn9":
                mainCount9 += 1
                decrementCountLabel9.text = String(mainCount9)
            
            case "mainIncrBtn10":
                mainCount10 += 1
                decrementCountLabel10.text = String(mainCount10)
            
        default:
                print("Error in Increment Button Function")
        }
    }
    
    
    
    // Decrement Count Labels
    
    @IBOutlet weak var decrementCountLabel1: UILabel!
    @IBOutlet weak var decrementCountLabel2: UILabel!
    @IBOutlet weak var decrementCountLabel3: UILabel!
    @IBOutlet weak var decrementCountLabel4: UILabel!
    @IBOutlet weak var decrementCountLabel5: UILabel!
    @IBOutlet weak var decrementCountLabel6: UILabel!
    @IBOutlet weak var decrementCountLabel7: UILabel!
    @IBOutlet weak var decrementCountLabel8: UILabel!
    @IBOutlet weak var decrementCountLabel9: UILabel!
    @IBOutlet weak var decrementCountLabel10: UILabel!
    
    
    
    // Decrement Count Buttons
    
    @IBAction func decrementCount(_ sender: UIButton)
    {
        decrementButtonLabels = sender.currentTitle!
        
        switch decrementButtonLabels {
            
        case "mainDcrBtn1":
            mainCount1 -= 1
            decrementCountLabel1.text = String(mainCount1)
            
        case "mainDcrBtn2":
            mainCount2 -= 1
            decrementCountLabel2.text = String(mainCount2)
            
        case "mainDcrBtn3":
            mainCount3 -= 1
            decrementCountLabel3.text = String(mainCount3)
            
        case "mainDcrBtn4":
            mainCount4 -= 1
            decrementCountLabel4.text = String(mainCount4)
            
        case "mainDcrBtn5":
            mainCount5 -= 1
            decrementCountLabel5.text = String(mainCount5)
            
        case "mainDcrBtn6":
            mainCount6 -= 1
            decrementCountLabel6.text = String(mainCount6)
            
        case "mainDcrBtn7":
            mainCount7 -= 1
            decrementCountLabel7.text = String(mainCount7)
            
        case "mainDcrBtn8":
            mainCount8 -= 1
            decrementCountLabel8.text = String(mainCount8)
            
        case "mainDcrBtn9":
            mainCount9 -= 1
            decrementCountLabel9.text = String(mainCount9)
            
        case "mainDcrBtn10":
            mainCount10 -= 1
            decrementCountLabel10.text = String(mainCount10)
            
        default:
            print("Error in Decrement Button Function")
        }
    }
    
    
    
    // MARK: Helper Functions
    
    
    // Convert integer seconds to HH:MM:SS
    func convertToTimestamp (time : Int) -> (String)
    {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    
    // Disable All 'Teacher Behaviors' Start Timer Buttons
    func disableGroupOneTimers ()
    {
        mainStartBtn1.isEnabled = false
        mainStartBtn2.isEnabled = false
        mainStartBtn3.isEnabled = false
        mainStartBtn4.isEnabled = false
        mainStartBtn5.isEnabled = false
        mainStartBtn6.isEnabled = false
        mainStartBtn7.isEnabled = false
        mainStartBtn8.isEnabled = false
        mainStartBtn9.isEnabled = false
    }
    
    
    // Enable All 'Teacher Behaviors' Start Timer Buttons
    func enableGroupOneTimers ()
    {
        mainStartBtn1.isEnabled = true
        mainStartBtn2.isEnabled = true
        mainStartBtn3.isEnabled = true
        mainStartBtn4.isEnabled = true
        mainStartBtn5.isEnabled = true
        mainStartBtn6.isEnabled = true
        mainStartBtn7.isEnabled = true
        mainStartBtn8.isEnabled = true
        mainStartBtn9.isEnabled = true
    }
    
    // Invalidate All 'Teacher Behaviors' Timers
    
    func invalidateGroupOneTimers ()
    {
        mainTimer1.invalidate()
        mainTimer2.invalidate()
        mainTimer3.invalidate()
        mainTimer4.invalidate()
        mainTimer5.invalidate()
        mainTimer6.invalidate()
        mainTimer7.invalidate()
        mainTimer8.invalidate()
        mainTimer9.invalidate()
    }
    
    
    // Disable All 'Student Learning Behaviors' Start Timer Buttons
    func disableGroupTwoTimers ()
    {
        mainStartBtn10.isEnabled = false
        mainStartBtn11.isEnabled = false
        mainStartBtn12.isEnabled = false
        mainStartBtn13.isEnabled = false
        mainStartBtn14.isEnabled = false
        mainStartBtn15.isEnabled = false
    }
    
    // Enable All 'Student Learning Behaviors' Start Timer Buttons
    func enableGroupTwoTimers ()
    {
        mainStartBtn10.isEnabled = true
        mainStartBtn11.isEnabled = true
        mainStartBtn12.isEnabled = true
        mainStartBtn13.isEnabled = true
        mainStartBtn14.isEnabled = true
        mainStartBtn15.isEnabled = true
    }
    
    // Invalidate All 'Student Learning Behaviors' Timers
    
    func invalidateGroupTwoTimers ()
    {
        mainTimer10.invalidate()
        mainTimer11.invalidate()
        mainTimer12.invalidate()
        mainTimer13.invalidate()
        mainTimer14.invalidate()
        mainTimer15.invalidate()
    }
    
    
    
    
    
    
    
    
    
    
    
    

    // SEGUES

}
