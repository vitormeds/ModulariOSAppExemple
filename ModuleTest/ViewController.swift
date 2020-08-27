//
//  ViewController.swift
//  ModuleTest
//
//  Created by vitor.mendes on 27/08/20.
//  Copyright © 2020 Vitor Mendes. All rights reserved.
//

import UIKit
import BlueModule
import RedModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func redAction(_ sender: Any) {
         present(RedViewController(), animated: true, completion: nil)
    }
    
    @IBAction func blueAction(_ sender: Any) {
         present(BlueViewController(), animated: true, completion: nil)
    }
    
}

