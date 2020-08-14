//
//  ViewController.swift
//  UPLogs
//
//  Created by erbittuu on 08/14/2020.
//  Copyright (c) 2020 erbittuu. All rights reserved.
//

import UIKit
import UPLogs

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let simpleLog = UPLogs()
        simpleLog.trace("trace variable")
        simpleLog.debug("Print is something wrong")
        simpleLog.info("Hello", "World")
        simpleLog.warning("a", "b", "c", separator: " - ")
        simpleLog.error("error 404", terminator: "\n")
        
        print("--------------")
        
        let detailedLogs = UPLogs(formatter: .detailed)
        detailedLogs.trace("detailed Called!!!")
        
        print("--------------")
        
        let minimalLogs = UPLogs(formatter: .minimal)
        minimalLogs.trace("minimal Called!!!")
        
        print("--------------")
        
        let customLog = UPLogs()
        customLog.minLevel = .debug
        customLog.trace("trace variable")
        customLog.debug("Print is something wrong")
        customLog.info("Hello", "World")
        customLog.warning("a", "b", "c", separator: " - ")
        customLog.enabled = false
        customLog.error("error 404", terminator: "\n")
        customLog.debug("Print is something wrong")
        customLog.enabled = true
        customLog.debug("Print is something wrong")
        
        print("--------------")

        let shortLog = UPLogs(formatter: Formatter("%@: %@", .level, .message), minLevel:  .info)
        shortLog.trace("trace variable")
        shortLog.debug("Print is something wrong")
        shortLog.info("Hello", "World")
        shortLog.warning("a", "b", "c", separator: " - ")
        shortLog.error("error 404", terminator: "\n")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
