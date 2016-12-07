//
//  ViewController.swift
//  SwiftNoticeExample
//
//  Created by JohnLui on 15/4/15.
//  Copyright (c) 2015年 com.lvwenhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func topNotice(_ sender: AnyObject) {
        UIApplication.shared.setStatusBarHidden(false, with: .slide)
        self.noticeTop("OK!")
    }
    @IBAction func wait(_ sender: AnyObject) {
        // Just wait
        // self.pleaseWait()
        
        var imagesArray = Array<UIImage>()
        for i in 1...7 {
            imagesArray.append(UIImage(named: "loading\(i)")!)
        }
        self.pleaseWaitWithImages(imagesArray, timeInterval: 50)
    }
    @IBAction func noticeSuccess(_ sender: AnyObject) {
        self.successNotice("Success!")
        self.noticeSuccess("Success!", autoClear: true)
        self.noticeSuccess("Success!", autoClear: true, autoClearTime: 10)
    }
    @IBAction func noticeError(_ sender: AnyObject) {
        self.errorNotice("Error!")
    }
    @IBAction func noticeInfo(_ sender: AnyObject) {
        self.infoNotice("Info")
    }
    @IBAction func text(_ sender: AnyObject) {
//        SwiftNotice.showText("kiss me baby")
        self.noticeOnlyText("Only Text Only Text Only Text Only \nText Only Text Only Text Only\n Text Only Text Only Text ")
    }
    @IBAction func noticeStar(_ sender: Any) {
        self.starNotice("collected")
    }
    @IBAction func noticeDeletion(_ sender: Any) {
        self.deletionNotice("deleted")
    }
    @IBAction func clear(_ sender: AnyObject) {
        self.clearAllNotice()
    }

}

