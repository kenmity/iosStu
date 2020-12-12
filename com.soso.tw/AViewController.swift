//
//  AViewController.swift
//  com.soso.tw
//
//  Created by eric on 2020/12/12.
//  Copyright © 2020 eric. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    @IBAction func button1(_ sender: Any) {
        print("print");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
//        if let controller = storyboard?.instantiateViewController(identifier: "Page2"){
        //            present(controller, animated: true, completion: nil)
        //        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
