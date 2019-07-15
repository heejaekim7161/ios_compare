//
//  ViewController.swift
//  launched
//
//  Created by HeejaeKim on 15/07/2019.
//  Copyright © 2019 HeejaeKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var msgLabel: UILabel!
    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickReturn(_ sender: Any) {
        var urlString: String = "launchapp:param?msg="
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

