//
//  AudioRecorderView.swift
//  PETPAT
//
// The MIT License (MIT)
//
// Copyright (c) 2015 Gene De Lisa
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit
import AVFoundation

class AudioRecorderView: UIViewController {
    
    
    var recorder: AVAudioRecorder!
    var player: AVAudioPlayer!
    
    var meterTimer = Timer()
    
    var soundFileURL: URL!
    
    @IBOutlet var recordButton: UIButton!
    
    @IBOutlet var stopButon: UIButton!
    
    @IBOutlet var playButton: UIButton!
    
    @IBOutlet var statusLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stopButon.isEnabled = false
        playButton.isEnabled = false
        setSessionPlayback()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        recorder = nil
        player = nil
    }
    
    func updateAudioMeter(_ timer:Timer) {
        
        if recorder.isRecording {
            let min = Int(recorder.currentTime / 60)
            let sec = Int(recorder.currentTime.truncatingRemainder(dividingBy: 60))
            let s = String(format: "%02d:%02d", min, sec)
            statusLabel.text = s
            recorder.updateMeters()
              
        }
    }
    
    
    @IBAction func removeAll(_ sender: UIButton)
    {
        deleteAllRecordings()
    }
    
    @IBAction func record(_ sender: UIButton)
    {
        if player != nil && player.isPlaying {
            player.stop()
        }
        
        if recorder == nil {
            print("recording. recorder nil")
            recordButton.setTitle("Pause", for:UIControlState())
            playButton.isEnabled = false
            stopButon.isEnabled = true
            recordWithPermission(true)
            return
        }
        
        if recorder != nil && recorder.isRecording {
            print("pausing")
            recorder.pause()
            recordButton.setTitle("Continue", for:UIControlState())
            
        } else {
            print("recording")
            recordButton.setTitle("Pause", for:UIControlState())
            playButton.isEnabled = false
            stopButon.isEnabled = true
            //            recorder.record()
            recordWithPermission(false)
        }
    }
    
    
    @IBAction func stop(_ sender: UIButton)
    {
        print("stop")
        
        recorder?.stop()
        player?.stop()
        
//        meterTimer.invalidate()
        
        recordButton.setTitle("Record", for:UIControlState())
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setActive(false)
            playButton.isEnabled = true
            stopButon.isEnabled = false
            recordButton.isEnabled = true
        } catch let error as NSError {
            print("could not make session inactive")
            print(error.localizedDescription)
        }
        
        //recorder = nil
    }
    
    
    
    @IBAction func play(_ sender: UIButton)
    {
        setSessionPlayback()
        play()
    }
    
    func play() {
        
        var url:URL?
        if self.recorder != nil {
            url = self.recorder.url
        } else {
            url = self.soundFileURL!
        }
        print("playing \(url)")
        
        do {
            self.player = try AVAudioPlayer(contentsOf: url!)
            stopButon.isEnabled = true
            player.delegate = self
            player.prepareToPlay()
            player.volume = 1.0
            player.play()
        } catch let error as NSError {
            self.player = nil
            print(error.localizedDescription)
        }
        
    }
    
    func setupRecorder() {
        let format = DateFormatter()
        format.dateFormat="yyyy-MM-dd-HH-mm-ss"
        let currentFileName = "recording-\(format.string(from: Date())).m4a"
        print(currentFileName)
        
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        self.soundFileURL = documentsDirectory.appendingPathComponent(currentFileName)
        print("writing to soundfile url: '\(soundFileURL!)'")
        
        if FileManager.default.fileExists(atPath: soundFileURL.absoluteString) {
            // probably won't happen. want to do something about it?
            print("soundfile \(soundFileURL.absoluteString) exists")
        }
        
        
        let recordSettings:[String : AnyObject] = [
            AVFormatIDKey:             NSNumber(value: kAudioFormatAppleLossless),
            AVEncoderAudioQualityKey : NSNumber(value:AVAudioQuality.max.rawValue),
            AVEncoderBitRateKey :      NSNumber(value:320000),
            AVNumberOfChannelsKey:     NSNumber(value:2),
            AVSampleRateKey :          NSNumber(value:44100.0)
        ]
        
        
        do {
            recorder = try AVAudioRecorder(url: soundFileURL, settings: recordSettings)
            recorder.delegate = self
            recorder.isMeteringEnabled = true
            recorder.prepareToRecord() // creates/overwrites the file at soundFileURL
        } catch let error as NSError {
            recorder = nil
            print(error.localizedDescription)
        }
        
    }
    
    
    func recordWithPermission(_ setup:Bool) {
        let session:AVAudioSession = AVAudioSession.sharedInstance()
        // ios 8 and later
        if (session.responds(to: #selector(AVAudioSession.requestRecordPermission(_:)))) {
            AVAudioSession.sharedInstance().requestRecordPermission({(granted: Bool)-> Void in
                if granted {
                    print("Permission to record granted")
                    self.setSessionPlayAndRecord()
                    if setup {
                        self.setupRecorder()
                    }
                    self.recorder.record()
                    
                    
//                    self.meterTimer = Timer.scheduledTimer(timeInterval: 0.1,
//                                                           target:self,
//                                                           selector:#selector(AudioRecorderView.updateAudioMeter(_:)),
//                                                           userInfo:nil,
//                                                           repeats:true)
                    
                } else {
                    print("Permission to record not granted")
                }
            })
        } else {
            print("requestRecordPermission unrecognized")
        }
    }
    
    
    func setSessionPlayback() {
        let session:AVAudioSession = AVAudioSession.sharedInstance()
        
        do {
            try session.setCategory(AVAudioSessionCategoryPlayback)
        } catch let error as NSError {
            print("could not set session category")
            print(error.localizedDescription)
        }
        do {
            try session.setActive(true)
        } catch let error as NSError {
            print("could not make session active")
            print(error.localizedDescription)
        }
    }
    
    
    func setSessionPlayAndRecord() {
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(AVAudioSessionCategoryPlayAndRecord)
        } catch let error as NSError {
            print("could not set session category")
            print(error.localizedDescription)
        }
        do {
            try session.setActive(true)
        } catch let error as NSError {
            print("could not make session active")
            print(error.localizedDescription)
        }
    }
    
    
    
    func deleteAllRecordings() {
        let docsDir =
            NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        
        let fileManager = FileManager.default
        
        do {
            let files = try fileManager.contentsOfDirectory(atPath: docsDir)
            var recordings = files.filter( { (name: String) -> Bool in
                return name.hasSuffix("m4a")
            })
            for i in 0 ..< recordings.count {
                let path = docsDir + "/" + recordings[i]
                
                print("removing \(path)")
                do {
                    try fileManager.removeItem(atPath: path)
                } catch let error as NSError {
                    NSLog("could not remove \(path)")
                    print(error.localizedDescription)
                }
            }
            
        } catch let error as NSError {
            print("could not get contents of directory at \(docsDir)")
            print(error.localizedDescription)
        }
        
    }
    
    
}


// MARK: AVAudioRecorderDelegate
extension AudioRecorderView : AVAudioRecorderDelegate {
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder,
                                         successfully flag: Bool) {
        print("finished recording \(flag)")
        stopButon.isEnabled = false
        playButton.isEnabled = true
        recordButton.setTitle("Record", for:UIControlState())
        
        // iOS8 and later
        let alert = UIAlertController(title: "Recorder",
                                      message: "Finished Recording",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Keep", style: .default, handler: {action in
            print("keep was tapped")
            self.recorder = nil
        }))
        alert.addAction(UIAlertAction(title: "Delete", style: .default, handler: {action in
            print("delete was tapped")
            self.recorder.deleteRecording()
        }))
        self.present(alert, animated:true, completion:nil)
    }
    
    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder,
                                          error: Error?) {
        
        if let e = error {
            print("\(e.localizedDescription)")
        }
    }
    
}

// MARK: AVAudioPlayerDelegate
extension AudioRecorderView : AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        print("finished playing \(flag)")
        recordButton.isEnabled = true
        stopButon.isEnabled = false
    }
    
    func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
        if let e = error {
            print("\(e.localizedDescription)")
        }
        
    }
}
