//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by kext on 15/5/2.
//  Copyright (c) 2015年 smartx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        // hide the number pad
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okDidTap(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        if let year = yearOfBirth.text.toInt() {
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named: String (imageNumber))
        } else {
            // notify user to input year
        }
    }

}

