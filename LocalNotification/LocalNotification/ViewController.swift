//
//  ViewController.swift
//  LocalNotification
//
//  Created by Ankit on 10/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      LocalNotification.shared.initialLocalSetup()
    }

    @IBAction func sendLocalNotification(){
      LocalNotification.shared.sendLocalNotification()
    }
    
}

