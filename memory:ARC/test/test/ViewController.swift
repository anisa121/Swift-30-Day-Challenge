//
//  ViewController.swift
//  test
//
//  Created by Anisa on 18.02.2026.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Create a button to launch the test manually
        let btn = UIButton(type: .system)
        btn.setTitle("🚀 Start Leak Test", for: .normal)
        btn.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        btn.addTarget(self, action: #selector(startTest), for: .touchUpInside)
        view.addSubview(btn)
    }

    @objc func startTest() {
        // Now we push ONLY when you ask for it
        let newVC = LeakyVC()
        navigationController?.pushViewController(newVC, animated: true)
    }
}

