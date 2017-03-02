//
//  ThirdViewController.swift
//  PETPAT
//
//  Created by Kyle on 2/8/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit
import AVFoundation
import Firebase

var savedAudio = NSData.init()

class ThirdViewController: UIViewController {

    @IBOutlet weak var modalAudioPopup: UIView!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    var audioRecorder : AVAudioRecorder!
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        modalAudioPopup.layer.cornerRadius = 15
        modalAudioPopup.layer.masksToBounds = true
        
        playButton.isHidden = true
        self.prepareAudioRecorder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func saveModalPopup(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func dismissModalPopup(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    

    @IBAction func recordButtonPressed(_ sender: UIButton) {
        
        if !audioRecorder.isRecording {
            //start recording
            
            let audioSession = AVAudioSession.sharedInstance()
            
            do {
                try audioSession.setActive(true)
                audioRecorder.record()
            } catch {
                print(error)
            }
        } else {
            // stop recording
            audioRecorder.stop()
            let audioSession = AVAudioSession.sharedInstance()
            
            do {
                try audioSession.setActive(false)
                
            } catch {
                print(error)
            }
            
            // Check
            if self.verifyFileExists() {
                print("file exists")
                playButton.isHidden = false
            } else {
                print("There was a problem recording")
            }
        }
        
        self.updateRecordButtonTitle()
    }
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        self.playAudio()
    }
  
    // MARK : MAIN
    
    func prepareAudioRecorder () {
        let audioSession = AVAudioSession.sharedInstance()
        
        do {
            try audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord)
            
            try audioRecorder = AVAudioRecorder(url: URL(fileURLWithPath: self.audioFileLocation()),
                                                settings: self.audioRecorderSettings())
            
            audioRecorder.prepareToRecord()
        } catch {
            print(error)
        }
    }
    
    func sendAudio() {
        do {
            try savedAudio = NSData.init(contentsOf: URL(fileURLWithPath: self.audioFileLocation()))
            try print(savedAudio)
        } catch {
            print(error)
        }
    }
    
    func playAudio() {
        let audioSession = AVAudioSession.sharedInstance()
        
        do {
            try audioSession.setCategory(AVAudioSessionCategoryPlayback)
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: self.audioFileLocation()))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
            sendAudio()
            
        } catch {
            print(error)
        }
    }
    
    // MARK : Helpers
    
    func audioFileLocation () -> String {
        
        return NSTemporaryDirectory().appending("audioRecording.m4a")
    }
    
    func audioRecorderSettings () -> [String:Any] {
        
        let settings = [AVFormatIDKey : NSNumber.init(value: kAudioFormatAppleLossless),
                        AVSampleRateKey : NSNumber.init(value: 44100.0),
                        AVNumberOfChannelsKey : NSNumber.init(value: 1),
                        AVLinearPCMBitDepthKey : NSNumber.init(value: 16),
                        AVEncoderAudioQualityKey : NSNumber.init(value: AVAudioQuality.high.rawValue)]
        
        return settings
    }
    
    
    func updateRecordButtonTitle () {
        if audioRecorder.isRecording {
            recordButton.setTitle("Recording...", for: .normal)
        } else {
            recordButton.setTitle("Record", for: .normal)
        }
    }
    
    func verifyFileExists () -> Bool {
        
        let fileManager = FileManager.default
        
        return fileManager.fileExists(atPath: self.audioFileLocation())
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
