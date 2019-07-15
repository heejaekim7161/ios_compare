//
//  ViewController.swift
//  launcher
//
//  Created by HeejaeKim on 15/07/2019.
//  Copyright © 2019 HeejaeKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickLaunch(_ sender: Any) {
        var urlString: String = "launchclient:param?msg="
        if let msg = textField.text, !msg.isEmpty {
            urlString += msg
        } else {
            urlString += "No message"
        }
        urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let url = URL(string: urlString)
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: [:]) { (result) in
                print("result: " + String(result))
            }
        } else {
            print("cannot open")
        }
    }
}

