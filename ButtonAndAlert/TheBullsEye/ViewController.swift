//
//  ViewController.swift
//  TheBullsEye
//
//  Created by Chauncey on 8/26/15.
//  Copyright (c) 2015 Chauncey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(
            title: "Hello World!",
            message: "This is my first App",
            preferredStyle: .Alert)
        
        let action = UIAlertAction (
            title:"Awesome",
            style:.Default,
            handler:nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
    }


}

