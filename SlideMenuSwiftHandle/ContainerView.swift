//
//  ContainerViewController.swift
//  SlideMenuSwiftHandle
//
//  Created by mhtran on 4/27/16.
//  Copyright © 2016 mhtran. All rights reserved.
//

import UIKit

class ContainerView: UIViewController {

    @IBOutlet weak var masterView: UIView!
    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var menuView: UIView!
    
    @IBOutlet weak var rightContrains1: NSLayoutConstraint!
    
    @IBOutlet weak var rightContrains2: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }

    @IBAction func leftSwipe(sender: AnyObject) {
        open()
            }

    @IBAction func rightSwipe(sender: AnyObject) {
        close()
    }

    @IBAction func menuTap(sender: AnyObject) {
        if rightContrains1.constant == 0 {
            open()
        } else {
            close()
        }
    }
    
    func open() {
        rightContrains1.constant = menuView.frame.size.width
        rightContrains2.constant = menuView.frame.size.width
        UIView.animateWithDuration(0.3) {
            self.view.layoutIfNeeded()
        }

    }
    
    func close() {
        rightContrains1.constant = 0
        rightContrains2.constant = 0
        UIView.animateWithDuration(0.3) {
            self.view.layoutIfNeeded()
        }

    }
}
