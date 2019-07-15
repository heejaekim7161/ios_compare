//
//  ViewController.swift
//  navicontrol
//
//  Created by HeejaeKim on 15/07/2019.
//  Copyright © 2019 HeejaeKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EditDelegate {

    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("vc: prepare")
        let editView = segue.destination as! EditViewController
        editView.delegate = self
    }

    func didMessageSended(_ msg: String) {
        label.text = msg
    }
}
