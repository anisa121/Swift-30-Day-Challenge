//
//  ViewController.swift
//  concurrency
//
//  Created by Anisa on 25.02.2026.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    let spinner = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        view.backgroundColor = .white
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.frame = CGRect(x: 0, y: 100, width: view.frame.width, height: 50)
        label.textAlignment = .center
        view.addSubview(label)
        
        label.text = "Start the test"
        
        spinner.color = .black
        spinner.style = .medium
        spinner.center = view.center
        view.addSubview(spinner)
        
        let button = UIButton(type: .system)
        button.setTitle("Start async task", for: .normal)
        button.frame = CGRect(x: 50, y: 300, width: 300, height: 50)
        button.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func handleTap() {
        Task {
            await makeFetch()
        }
    }
    
    @MainActor
    func makeFetch() async {
        label.text = "Status calculating..."
        spinner.startAnimating()
        
        try? await Task.sleep(nanoseconds: 3_000_000_000)
        
        label.text = "Status done!"
        spinner.stopAnimating()
    }

}

