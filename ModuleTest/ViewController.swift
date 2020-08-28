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

public class ViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func redAction(_ sender: Any) {
        let vc = RedViewController.instanceFromStoryBoard()
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func blueAction(_ sender: Any) {
        let vc = BlueViewController.instanceFromStoryBoard()
         present(vc, animated: true, completion: nil)
    }
    
}

