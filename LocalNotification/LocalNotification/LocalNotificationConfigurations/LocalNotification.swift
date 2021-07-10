//
//  LocalNotification.swift
//  LocalNotification
//
//  Created by Ankit on 10/07/21.
//

import Foundation
import UserNotifications
import NotificationCenter

final class LocalNotification {
    
   static let shared : LocalNotification = LocalNotification()
   
    private init(){}
    
    func initialLocalSetup(){
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound]) { (granted, error) in
            if granted{
            print(LocalNotificationConstants.shared.LNGRANTED)
            }else{
            print(LocalNotificationConstants.shared.LNDENIED)
            }
        }
    }
    
    //MARK:- DUMMY Function
    func sendLocalNotification(){
        //step 1:- create content
        let content = UNMutableNotificationContent()
        content.title = LocalNotificationConstants.shared.LNDUMMYTITLE
        content.subtitle = LocalNotificationConstants.shared.LNDUMMYSUBTITLE
        content.body = LocalNotificationConstants.shared.LNDUMMYBODY
        content.sound = UNNotificationSound.init(named: UNNotificationSoundName(rawValue: "\(LocalNotificationConstants.shared.LNDUMMYSOUND)\(LocalNotificationConstants.shared.LNMP3)"))
        
       // step:- 2
        let imageName = LocalNotificationConstants.shared.LNDUMMYTIGERIMAGE
        guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: LocalNotificationConstants.shared.LNPNG) else { return }
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
        content.attachments = [attachment]
        
        // step:- 3:- setting trigger and request
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: LocalNotificationConstants.shared.LNDUMMY10SECONDTIMEINTERVAL, repeats: false)
        let request = UNNotificationRequest(identifier: LocalNotificationConstants.shared.LNDUMMYREQUESTIDENTIFIER, content: content, trigger: trigger)
        
        //step:- 4:- adding request to notification
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        //exit application
        exit(0)
    }
    
    func sendLocalNotification(contentTitle: String,contentSubtitle: String,contentBudy: String,contentSoundMP3Name: String,PNGImageName: String,intervalTime: Double,requestIdentifier: String){
       
        //step 1:- create content
        let content = UNMutableNotificationContent()
        content.title = contentTitle
        content.subtitle = contentSubtitle
        content.body = contentBudy
       content.sound = UNNotificationSound.init(named: UNNotificationSoundName(rawValue: "\(contentSoundMP3Name)\(LocalNotificationConstants.shared.LNMP3)"))
        
        //step:- 2 :- creating attachment
        guard let imageURL = Bundle.main.url(forResource: PNGImageName, withExtension: LocalNotificationConstants.shared.LNPNG) else { return }
        let attachment = try! UNNotificationAttachment(identifier: PNGImageName, url: imageURL, options: .none)
        content.attachments = [attachment]
        
        // step:-3 :- setting trigger and request
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: intervalTime, repeats: false)
        let request = UNNotificationRequest(identifier: requestIdentifier, content: content, trigger: trigger)
        
        //step:- 4 : - adding request to notification
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        //exit application
        exit(0)
    }
    
    func sendLocalNotification(contentTitle: String,contentSubtitle: String,contentBudy: String,contentSoundMP3Name: String,intervalTime: Double,requestIdentifier: String){
       
        //step 1:- create content
        let content = UNMutableNotificationContent()
        content.title = contentTitle
        content.subtitle = contentSubtitle
        content.body = contentBudy
        content.sound = UNNotificationSound.init(named: UNNotificationSoundName(rawValue: "\(contentSoundMP3Name)\(LocalNotificationConstants.shared.LNMP3)"))
        
        // step:-3 :- setting trigger and request
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: intervalTime, repeats: false)
        let request = UNNotificationRequest(identifier: requestIdentifier, content: content, trigger: trigger)
        
        //step:- 4 : - adding request to notification
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        //exit application
        exit(0)
    }
    
}
