//
//  RedController.swift
//  RedModule
//
//  Created by vitor.mendes on 27/08/20.
//  Copyright © 2020 Vitor Mendes. All rights reserved.
//

import UIKit

public class RedViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    public override func viewDidLoad() {
        super.viewDidLoad()
    }

    public static func instanceFromStoryBoard() -> RedViewController {
       let viewController = UIStoryboard(name: "Red", bundle: Bundle(identifier: "vitor.RedModule")).instantiateViewController(withIdentifier: "RedViewController") as! RedViewController
       return viewController
    }
}
