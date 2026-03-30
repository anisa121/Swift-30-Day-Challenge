//
//  ViewController.swift
//  freezer
//
//  Created by Anisa on 24.02.2026.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        label.text = "Status: Ready"
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 100, width: view.frame.width, height: 50)
        view.addSubview(label)
        
        let btn = UIButton(type: .system)
        btn.setTitle("Freeze me ", for: .normal)
        btn.frame = CGRect(x: 50, y: 300, width: 300, height: 50)
        btn.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        view.addSubview(btn)
        
        let spinner = UIActivityIndicatorView(style: .medium)
        spinner.center = view.center
        view.addSubview(spinner)
        spinner.startAnimating()
                           
    }
    
    @objc func handleButtonTap() {
        label.text = "Calculate primes..."

        DispatchQueue.global(qos: .userInitiated).async {
            // ❌ BAD: This runs on the Main Thread.
            // The UI (Spinner) will stop moving entirely while this loop runs.
            //        for _ in 0...50000 {
            //            let _ = isPrime(Int.random(in: 1...10000))
            //        }
            print("Sleep started on the background thread")
            sleep(5)
            print("Sleep is over.")
            
            DispatchQueue.main.async {
                self.label.text = "Status: Done"
            }
        }
    }
    
    func isPrime(_ number : Int) -> Bool {
        return number > 1 && !(2..<number).contains { number % $0 == 0 }
    }


}

