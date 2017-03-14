//
//  ReportAnalysisView.swift
//  PETPAT
//
//  Created by Kyle on 3/9/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

class ReportAnalysisView: UIViewController {

    @IBOutlet var mainView: UIView!
    // text view holds all outputed information
    @IBOutlet weak var reportAnalysisOutputTextView: UITextView!
    
    
    // functions grabs the full displayed context of the 'reportAnalysisOutputTextView' and creates a screenshot image of it's specified bounds. Invokes Singleton class 'CustomPhotoAlbum' saveImage() method, which saves the specified image to a custom photo album named 'Analysis Reports' in the iOS 'Photos' application
    
    func createImageScrn() {
        
        var image: UIImage? = nil
        
        UIGraphicsBeginImageContextWithOptions(reportAnalysisOutputTextView.contentSize, reportAnalysisOutputTextView.isOpaque, 0.0)
        
        let savedContentOffset: CGPoint = reportAnalysisOutputTextView.contentOffset
        let savedFrame: CGRect = reportAnalysisOutputTextView.frame
        
        reportAnalysisOutputTextView.contentOffset = CGPoint.zero
        reportAnalysisOutputTextView.frame = CGRect(x: 0,y: 0, width: reportAnalysisOutputTextView.contentSize.width, height: reportAnalysisOutputTextView.contentSize.height)
        
        reportAnalysisOutputTextView.layer.render(in: UIGraphicsGetCurrentContext()!)
        image = UIGraphicsGetImageFromCurrentImageContext()
        
        reportAnalysisOutputTextView.contentOffset = savedContentOffset
        reportAnalysisOutputTextView.frame = savedFrame
        
        UIGraphicsEndImageContext()
        
        CustomPhotoAlbum.sharedInstance.saveImage(image: image!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // Stanrd iOS function - invoked when all elements of the view have successfully loaded. Loads all global information into the 'reportAnalysisOutputTextView' and invokes the createImageScrn() function.
    
    override func viewDidAppear(_ animated: Bool) {
        
        // Load in global information from the 'Main Timer View' unless label values have not been reinitialized away from default "Edit..."
        
        reportAnalysisOutputTextView.text! += "Main Timer:\n"
        reportAnalysisOutputTextView.text! += "Timed Behaviors:\n\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel1String): \n\t\tTotal Time: \t\t\(totalTime1String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel2String): \n\t\tTotal Time:\t\t\(totalTime2String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel3String): \n\t\tTotal Time:\t\t\(totalTime3String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel4String): \n\t\tTotal Time:\t\t\(totalTime4String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel5String): \n\t\tTotal Time:\t\t\(totalTime5String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel6String): \n\t\tTotal Time:\t\t\(totalTime6String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel7String): \n\t\tTotal Time:\t\t\(totalTime7String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel8String): \n\t\tTotal Time:\t\t\(totalTime8String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel9String): \n\t\tTotal Time:\t\t\(totalTime9String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel10String): \n\t\tTotal Time:\t\t\(totalTime10String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel11String): \n\t\tTotal Time:\t\t\(totalTime11String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel12String): \n\t\tTotal Time:\t\t\(totalTime12String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel13String): \n\t\tTotal Time:\t\t\(totalTime13String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel14String): \n\t\tTotal Time:\t\t\(totalTime14String)\n"
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel15String): \n\t\tTotal Time:\t\t\(totalTime15String)\n"
        
        reportAnalysisOutputTextView.text! += "\nCounted Behaviors:\n\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel1String): \n\t\tTotal Count: \t\t\(totalCount1String)\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel2String): \n\t\tTotal Count: \t\t\(totalCount2String)\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel3String): \n\t\tTotal Count: \t\t\(totalCount3String)\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel4String): \n\t\tTotal Count: \t\t\(totalCount4String)\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel5String): \n\t\tTotal Count: \t\t\(totalCount5String)\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel6String): \n\t\tTotal Count: \t\t\(totalCount6String)\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel7String): \n\t\tTotal Count: \t\t\(totalCount7String)\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel8String): \n\t\tTotal Count: \t\t\(totalCount8String)\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel9String): \n\t\tTotal Count: \t\t\(totalCount9String)"
        
        if countBehaviorLabel10String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(countBehaviorLabel10String): \n\t\t\(totalCount10String)\n"            
        }

        
        
        // Load in all global information from the 'Secondary Timer View' unless label values have not been reinitialized away from default "Edit..."
        
        reportAnalysisOutputTextView.text! += "\n\nSecondary Timer:\n"
        reportAnalysisOutputTextView.text! += "Timed Behaviors:\n"
        
        if secTimeBehaviorLabel1String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel1String): \n\t\tTotal Time:\t\t\(secTotalTime1String)"

        }
        
        if secTimeBehaviorLabel2String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel2String): \n\t\tTotal Time:\t\t\(secTotalTime2String)"

        }
        
        if secTimeBehaviorLabel3String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel3String): \n\t\tTotal Time:\t\t\(secTotalTime3String)"

        }
        
        if secTimeBehaviorLabel4String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel4String): \n\t\tTotal Time:\t\t\(secTotalTime4String)"

        }
        
        if secTimeBehaviorLabel5String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel5String): \n\t\tTotal Time:\t\t\(secTotalTime5String)"

        }
        
        if secTimeBehaviorLabel6String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel6String): \n\t\tTotal Time:\t\t\(secTotalTime6String)"

        }
        
        if secTimeBehaviorLabel7String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel7String): \n\t\tTotal Time:\t\t\(secTotalTime7String)"

        }
        
        if secTimeBehaviorLabel8String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel8String): \n\t\tTotal Time:\t\t\(secTotalTime8String)"

        }
        
        if secTimeBehaviorLabel9String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel9String): \n\t\tTotal Time:\t\t\(secTotalTime9String)"

        }
        
        if secTimeBehaviorLabel10String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel10String): \n\t\tTotal Time:\t\t\(secTotalTime10String)"

        }
        
        if secTimeBehaviorLabel11String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel11String): \n\t\tTotal Time:\t\t\(secTotalTime11String)"

        }
        
        if secTimeBehaviorLabel12String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secTimeBehaviorLabel12String): \n\t\tTotal Time:\t\t\(secTotalTime12String)"

        }
        
        
        reportAnalysisOutputTextView.text! += "Counted Behaviors:\n"

        
        if secCountBehaviorLabel1String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secCountBehaviorLabel1String): \n\t\tTotal Count:\t\t\(secTotalCount1String)"

        }
        
        if secCountBehaviorLabel2String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secCountBehaviorLabel2String): \n\t\tTotal Count:\t\t\(secTotalCount2String)"

        }
        
        if secCountBehaviorLabel3String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secCountBehaviorLabel3String): \n\t\tTotal Count:\t\t\(secTotalCount3String)"

        }
        
        if secCountBehaviorLabel4String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\t\(secCountBehaviorLabel4String): \n\t\tTotal Count:\t\t\(secTotalCount4String)"

        }
        
        if secCountBehaviorLabel5String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\(secCountBehaviorLabel5String): \nTotal Count:\t\t\(secTotalCount5String)"

        }
        
        if secCountBehaviorLabel6String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\(secCountBehaviorLabel6String): \nTotal Count:\t\t\(secTotalCount6String)"

        }
        
        if secCountBehaviorLabel7String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\(secCountBehaviorLabel7String): \nTotal Count:\t\t\(secTotalCount7String)"

        }
        
        if secCountBehaviorLabel8String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\(secCountBehaviorLabel8String): \nTotal Count:\t\t\(secTotalCount8String)"

        }
        
        if secCountBehaviorLabel9String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\(secCountBehaviorLabel9String): \nTotal Count:\t\t\(secTotalCount9String)"

        }
        
        if secCountBehaviorLabel10String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\(secCountBehaviorLabel10String): \nTotal Count:\t\t\(secTotalCount10String)"

        }
        
        if secCountBehaviorLabel11String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\(secCountBehaviorLabel11String): \nTotal Count:\t\t\(secTotalCount11String)"

        }
        
        if secCountBehaviorLabel12String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\n\(secCountBehaviorLabel12String): \nTotal Count:\t\t\(secTotalCount12String)"

        }
        
        
        // Load in all global information from the 'Main Rubric View' unless label values have not been reinitialized away from default "Edit..."
        
        reportAnalysisOutputTextView.text! += "\nRubric:\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString1)\nTotal Count: \(totalQuestionCount1String)\nComments: \n\(popupComment1String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString2)\nTotal Count: \(totalQuestionCount2String)\nComments: \n\(popupComment2String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString3)\nTotal Count: \(totalQuestionCount3String)\nComments: \n\(popupComment3String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString4)\nTotal Count: \(totalQuestionCount4String)\nComments: \n\(popupComment4String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString5)\nTotal Count: \(totalQuestionCount5String)\nComments: \n\(popupComment5String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString6)\nTotal Count: \(totalQuestionCount6String)\nComments: \n\(popupComment6String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString7)\nTotal Count: \(totalQuestionCount7String)\nComments: \n\(popupComment7String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString8)\nTotal Count: \(totalQuestionCount8String)\nComments: \n\(popupComment8String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString9)\nTotal Count: \(totalQuestionCount9String)\nComments: \n\(popupComment9String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString10)\nTotal Count: \(totalQuestionCount10String)\nComments: \n\(popupComment10String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString11)\nTotal Count: \(totalQuestionCount11String)\nComments: \n\(popupComment11String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString12)\nTotal Count: \(totalQuestionCount12String)\nComments: \n\(popupComment12String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString13)\nTotal Count: \(totalQuestionCount13String)\nComments: \n\(popupComment13String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString14)\nTotal Count: \(totalQuestionCount14String)\nComments: \n\(popupComment14String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString15)\nTotal Count: \(totalQuestionCount15String)\nComments: \n\(popupComment15String)\n"

        
        // create a screenshot of the textview's bounds, save to custom photo album 'Analysis Reports'
        
        createImageScrn()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
