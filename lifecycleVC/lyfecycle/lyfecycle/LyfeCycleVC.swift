//
//  LyfeCycleVC.swift
//  lyfecycle
//
//  Created by Anisa on 20.02.2026.
//

import UIKit
import Foundation

class LyfeCycleVC: UIViewController {
    var backgroundTask: UIBackgroundTaskIdentifier = .invalid
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        print("1️⃣ viewDidLoad: Memory allocated. One-time setup.")
            
            // Listen for the app going to the background
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(appMovedToBackground),
            name: UIApplication.didEnterBackgroundNotification,
            object: nil
        )
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2️⃣ viewWillAppear: UI is about to show up.")
    }
        
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("3️⃣ viewDidAppear: UI is fully visible.")
    }
    
    @objc func appMovedToBackground() {
        print("⚠️ App entered background! Usually, we freeze now.")
        
        // 🚨 THE MAGIC TRICK: Asking iOS for extra time
        backgroundTask = UIApplication.shared.beginBackgroundTask { [weak self] in
        // This closure runs if time runs out (usually you get ~30 seconds)
            print("❌ OS says: Time is up! Forcing suspension.")
            guard let self = self else { return }
            UIApplication.shared.endBackgroundTask(self.backgroundTask)
            self.backgroundTask = .invalid
        }
            
            // Simulate a long task (like saving to CoreData or finishing a download)
        DispatchQueue.global().async {
            for i in 1...5 {
                print("⏳ Processing in background... \(i)/5")
                sleep(1) // Fake 1 second delay
            }
            
            print("✅ Background task complete!")
            // Tell the OS we are done, so it can suspend us gracefully
            UIApplication.shared.endBackgroundTask(self.backgroundTask)
            self.backgroundTask = .invalid
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("4️⃣ viewWillDisappear: UI is about to disappear.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("5 viewDidDisappear: UI is not visible anymore.")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}


