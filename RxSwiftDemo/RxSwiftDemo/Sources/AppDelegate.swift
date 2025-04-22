//
//  AppDelegate.swift
//  RxSwiftDemo
//
//  Created by 조영민 on 4/22/25.
//

import UIKit
 
 @UIApplicationMain
 class AppDelegate: UIResponder, UIApplicationDelegate {
   var window: UIWindow?
   
   func application(_ application: UIApplication,
                    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     window = UIWindow(frame: UIScreen.main.bounds)
     let viewController = ViewController()
     window?.rootViewController = UINavigationController(rootViewController: ParentViewController())
     window?.makeKeyAndVisible()
     return true
   }
 }
