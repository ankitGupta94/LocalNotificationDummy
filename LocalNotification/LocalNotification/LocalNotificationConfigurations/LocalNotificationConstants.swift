//
//  LocalNotificationConstants.swift
//  LocalNotification
//
//  Created by Ankit on 10/07/21.
//

import Foundation

   final class LocalNotificationConstants{
   
    static let shared = LocalNotificationConstants()
    
    private init(){}
    
    let LNGRANTED = "granted"
    let LNDENIED = "denied"
    let LNMP3 = ".mp3"
    let LNPNG = "png"
    let LNDUMMYTITLE = "Notification Tutorial"
    let LNDUMMYSUBTITLE = "from ANKIT"
    let LNDUMMYBODY = "Notification triggered"
    let LNDUMMYSOUND =  "bensound-jazzyfrenchy30"
    let LNDUMMYREQUESTIDENTIFIER = "notification.id.01"
    let LNDUMMYTIGERIMAGE = "tiger"
    let LNDUMMY10SECONDTIMEINTERVAL = TimeInterval(10)
}
