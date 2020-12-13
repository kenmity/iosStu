//
//  ViewController.swift
//  com.soso.tw
//
//  Created by eric on 2020/12/10.
//  Copyright © 2020 eric. All rights reserved.
//

import UIKit



protocol DataViewDelegate {
    func setTouch(touch: Bool)
}


class ViewController: UIViewController,DataViewDelegate {
    func setTouch(touch: Bool) {
        print("委託")
    }
    

    var delegate: DataViewDelegate?
    @IBOutlet var AuiView: UIView!
    
    @IBAction func goto(_ sender: Any) {
        AuiView.removeFromSuperview()
//        for  c in view.constraints {
//            if c.identifier == "bottom"{
//                c.constant = -10
//                break
//            }
//        }
        UIView.animate(withDuration: 0.5){
            self.view.layoutIfNeeded()
        }
        print("123")
        
        
        //        view.layoutIfNeeded()
        //        UIView.animate(withDuration: 2.0) {
        //            self.view.layoutIfNeeded()
        //        }
//        if let controller = storyboard?.instantiateViewController(identifier: "Page2"){
//                    present(controller, animated: true, completion: nil)
//                }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.addSubview(AuiView)
        AuiView.translatesAutoresizingMaskIntoConstraints = false
        AuiView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        //左邊x座標
        AuiView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0).isActive = true
        //右邊
        AuiView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0).isActive = true
        
        //下方
        let c = AuiView.topAnchor.constraint(equalTo: view.topAnchor,constant: 52)
        
//        let c = AuiView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 75)
        c.identifier = "bottom"
        c.isActive = true
        
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        AuiView.frame = view.frame
//        view.addSubview(AuiView)
        
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if (segue.identifier == "Page3") {
                let embedVC = segue.destination as!
                    AViewController
                embedVC.dataViewDelegate = self
            }
        }
}

