//
//  ViewController.swift
//  com.soso.tw
//
//  Created by eric on 2020/12/10.
//  Copyright © 2020 eric. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func goto(_ sender: Any) {
        if let controller = storyboard?.instantiateViewController(identifier: "Page2"){
                    present(controller, animated: true, completion: nil)
                }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

