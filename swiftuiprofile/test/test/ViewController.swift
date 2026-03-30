//
//  ViewController.swift
//  test
//
//  Created by Anisa on 22.02.2026.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let vc = UIHostingController(rootView: SwiftUIProfileView())
        navigationController?.pushViewController(vc, animated: true)
    }

}

