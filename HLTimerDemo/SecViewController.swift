//
//  SecViewController.swift
//  HLTimerDemo
//
//  Created by yunfu on 2018/10/17.
//  Copyright © 2018年 yunfu. All rights reserved.
//

import UIKit

class SecViewController: UIViewController {

    var timer:Timer?
    var blockTimer:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.hl_scheduledTimer(timeInterval: 1, target: self, selector: #selector(test), userInfo: nil, repeats: true)
        
        blockTimer = Timer.hl_scheduledTimer(withTimeInterval: 1, mode: .default, repeats: true, block: {
            
            print("blockTimer run")
            
        })
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func test()  {
        print("timer run")
    }
    
    deinit {
        timer?.invalidate()
        timer = nil
        blockTimer?.invalidate()
        blockTimer = nil
    }
    

}
