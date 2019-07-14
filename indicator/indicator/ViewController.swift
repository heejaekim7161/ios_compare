//
//  ViewController.swift
//  indicator
//
//  Created by HeejaeKim on 14/07/2019.
//  Copyright © 2019 HeejaeKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var indicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickPlay(_ sender: Any) {
        indicator.startAnimating()
    }

    @IBAction func onClickStop(_ sender: Any) {
        indicator.stopAnimating()
    }
}

