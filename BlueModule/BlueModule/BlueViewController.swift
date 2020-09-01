//
//  BlueController.swift
//  BlueModule
//
//  Created by vitor.mendes on 27/08/20.
//  Copyright © 2020 Vitor Mendes. All rights reserved.
//

import UIKit

public class BlueViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    public override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = R.string.blueStrings.blue()
    }

    public static func instanceFromStoryBoard() -> BlueViewController {
       let viewController = UIStoryboard(name: "Blue", bundle:  Bundle(identifier: "vitor.BlueModule")).instantiateViewController(withIdentifier: "BlueViewController") as! BlueViewController
       return viewController
    }
}
