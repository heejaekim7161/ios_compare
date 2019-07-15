//
//  EditViewController.swift
//  navicontrol
//
//  Created by HeejaeKim on 15/07/2019.
//  Copyright © 2019 HeejaeKim. All rights reserved.
//

import UIKit

protocol EditDelegate {
    func didMessageSended(_ msg: String)
}

class EditViewController: UIViewController {

    @IBOutlet var textField: UITextField!

    var delegate: EditDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("ev: prepare")
    }

    @IBAction func onClickSend(_ sender: Any) {
        if let msg = textField.text {
            delegate?.didMessageSended(msg)
        }
        navigationController?.popViewController(animated: true)
    }
}
