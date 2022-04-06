//
//  AppDelegate.swift
//  Democracity
//
//  Created by Rafiq Messai on 01/04/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /*
        var request = URLRequest(url: URL(string: "http://test.com")!)
        request.httpMethod = "POST"
        request.httpBody = "bonjour".data(using: .utf8)
        let task = URLSession.shared.dataTask(with: request) { data, res, err in
            // RES
        }
        task.resume();
        */
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UINavigationController(rootViewController: ConnexionViewController())
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }

}


