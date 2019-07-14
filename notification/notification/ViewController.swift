//
//  ViewController.swift
//  notification
//
//  Created by HeejaeKim on 10/07/2019.
//  Copyright © 2019 HeejaeKim. All rights reserved.
//

import UIKit

import UserNotifications

class ViewController: UIViewController, UNUserNotificationCenterDelegate {

    @IBOutlet var msg: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {didAllow, Error in
            print(didAllow)
        })

        UNUserNotificationCenter.current().delegate = self
    }

    @IBAction func onClickButton(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "This is title"
        content.subtitle = "This is subtitle"
        content.body = "This is body"
        content.badge = 1
        content.sound = UNNotificationSound.default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
        let request = UNNotificationRequest(identifier: "timerdone", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        print("foreground")
        msg.text = "The Notification is arrived in foreground"
        completionHandler([.alert, .badge, .sound])
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        if response.actionIdentifier == UNNotificationDismissActionIdentifier {
            // The user dismissed the notification without taking action
            print("dismiss")
            msg.text = "User dismissed the notification"
        }
        else if response.actionIdentifier == UNNotificationDefaultActionIdentifier {
            // The user launched the app
            print("launch")
            msg.text = "User launched the app"
        } else {
            print("no action")
            msg.text = "No action"
        }
    }
}
