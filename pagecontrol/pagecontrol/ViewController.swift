//
//  ViewController.swift
//  pagecontrol
//
//  Created by HeejaeKim on 14/07/2019.
//  Copyright © 2019 HeejaeKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let PAGE_NUM: Int = 10

    @IBOutlet var label: UILabel!

    @IBOutlet var pageControl: UIPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        pageControl.numberOfPages = PAGE_NUM
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = .black
        pageControl.currentPageIndicatorTintColor = .red
        label.text = "Current page is 0"
    }

    @IBAction func onClickPageControl(_ sender: UIPageControl) {
        label.text = "Current page is " + String(pageControl.currentPage)
    }
}

