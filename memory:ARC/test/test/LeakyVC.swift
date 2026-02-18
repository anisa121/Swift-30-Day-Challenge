//
//  LeakyVC.swift
//  test
//
//  Created by Anisa on 18.02.2026.
//

import Foundation
import UIKit

class LeakyVC: UIViewController {
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        print("✅ LeakyVC Init")
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            
            guard let self = self else {
                print("⚰️ Self is dead. Stopping timer.")
                return
            }
            print("Timer is running on \(self.description)")
        }
        
//        let backButton = UIButton(type: .system)
//        backButton.setTitle("Go Back", for: .normal)
//        backButton.addTarget(self, action: #selector(popVC), for: .touchUpInside)
//        backButton.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
//        view.addSubview(backButton)
    }
    
    deinit {
        print("💀 LeakyVC Deallocated (Memory Freed)")
        timer?.invalidate()
    }
    
//    @objc func popVC() {
//        navigationController?.popViewController(animated: true)
//    }
}
