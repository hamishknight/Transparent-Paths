//
//  ViewController.swift
//  Transparent Paths
//
//  Created by Hamish Knight on 01/03/2016.
//  Copyright © 2016 Redonkulous Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.redColor()
        
        let v = View(frame: view.bounds)
        v.backgroundColor = UIColor.clearColor()
        view.addSubview(v)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

