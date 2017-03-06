////
////  ModalCommentViewController.swift
////  PETPAT
////
////  Created by Kyle on 2/9/17.
////  Copyright © 2017 Central Washington University. All rights reserved.
////
////import UIKit
////class ModalCommentViewController: UIViewController {
////    @IBOutlet weak var modalCommentPopUpView: UIView!
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        // Do any additional setup after loading the view.
////        modalCommentPopUpView.layer.cornerRadius = 15
////        modalCommentPopUpView.layer.masksToBounds = true
////    }
////    override func didReceiveMemoryWarning() {
////        super.didReceiveMemoryWarning()
////        // Dispose of any resources that can be recreated.
////    }
////    @IBAction func saveModalPopup(_ sender: UIButton) {
////        dismiss(animated: true, completion: nil)
////    }
////    @IBAction func closeModalPopup(_ sender: UIButton) {
////        dismiss(animated: true, completion: nil)
////    }
////}
//
//
////
////
////  RecordAudioExample
////
////  Created by Wilson Muñoz on 5/26/16.
////  Copyright © 2016 Wilson Muñoz. All rights reserved.
////
//import UIKit
//import AVFoundation
//
//class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
//    
//    @IBOutlet weak var ButttonRecord: UIButton!
//    @IBOutlet weak var ButtonPlay: UIButton!
//    
//    
//    var soundRecorder : AVAudioRecorder!
//    var SoundPlayer : AVAudioPlayer!
//    
//    var AudioFileName = "sound.m4a"
//    
//    
//    let recordSettings = [AVSampleRateKey : NSNumber(value: Float(44100.0)),
//                          AVFormatIDKey : NSNumber(value: Int32(kAudioFormatMPEG4AAC)),
//                          AVNumberOfChannelsKey : NSNumber(value: 1),
//                          AVEncoderAudioQualityKey : NSNumber(value: Int32(AVAudioQuality.max.rawValue))]
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        setupRecorder()
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    @IBAction func ActionRecord(sender: AnyObject) {
//        if sender.titleLabel?!.text == "Record"{
//            
//            soundRecorder.record()
//            sender.setTitle("Stop", for: .normal)
//            ButtonPlay.isEnabled = false
//            
//        }
//        else{
//            
//            soundRecorder.stop()
//            sender.setTitle("Record", for: .normal)
//            ButtonPlay.isEnabled = true
//        }
//        
//    }
//    @IBAction func ActionPlay(sender: AnyObject) {
//        
//        if sender.titleLabel?!.text == "Play" {
//            
//            ButttonRecord.isEnabled = false
//            sender.setTitle("Stop", for: .normal)
//            
//            preparePlayer()
//            SoundPlayer.play()
//            
//        }
//        else{
//            
//            SoundPlayer.stop()
//            sender.setTitle("Play", for: .normal)
//            
//        }
//        
//    }
//    
//    //HELPERS
//    
//    func preparePlayer(){
//        
//        do {
//            try SoundPlayer = AVAudioPlayer(contentsOf: directoryURL()! as URL)
//            SoundPlayer.delegate = self
//            SoundPlayer.prepareToPlay()
//            SoundPlayer.volume = 1.0
//        } catch {
//            print("Error playing")
//        }
//        
//    }
//    
//    func setupRecorder(){
//        
//        
//        
//        let audioSession:AVAudioSession = AVAudioSession.sharedInstance()
//        
//        //ask for permission
//        if (audioSession.respondsToSelector(#selector(AVAudioSession.requestRecordPermission(_:)))) {
//            AVAudioSession.sharedInstance().requestRecordPermission({(granted: Bool)-> Void in
//                if granted {
//                    print("granted")
//                    
//                    //set category and activate recorder session
//                    do {
//                        
//                        try audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord)
//                        try self.soundRecorder = AVAudioRecorder(url: self.directoryURL()! as URL, settings: self.recordSettings)
//                        self.soundRecorder.prepareToRecord()
//                        
//                    } catch {
//                        
//                        print("Error Recording");
//                        
//                    }
//                    
//                }
//            })
//        }
//        
//    }
//    
//    func directoryURL() -> NSURL? {
//        let fileManager = FileManager.default
//        let urls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
//        let documentDirectory = urls[0] as NSURL
//        let soundURL = documentDirectory.appendingPathComponent("sound.m4a")
//        return soundURL as NSURL?
//    }
//    
//    func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool) {
//        ButtonPlay.isEnabled = true
//    }
//    
//    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool) {
//        ButttonRecord.isEnabled = true
//        ButtonPlay.setTitle("Play", for: .normal)
//    }
//    
//}
