//
//  ViewController.swift
//  lyfecycle
//
//  Created by Anisa on 20.02.2026.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        super.viewDidLoad()
        self.view.backgroundColor = .white
        let btn = UIButton(type: .system)
        btn.setTitle("🚀 Start Test", for: .normal)
        btn.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        btn.addTarget(self, action: #selector(startTest), for: .touchUpInside)
        view.addSubview(btn)
    }
    
    @objc func startTest() {
        let vc = LyfeCycleVC()
        navigationController?.pushViewController(vc, animated: true)
    }


}

