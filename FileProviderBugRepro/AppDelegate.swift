//
//  AppDelegate.swift
//  FileProviderBugRepro
//
//  Created by Ernesto Badillo on 12/13/18.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let domain = NSFileProviderDomain(identifier: NSFileProviderDomainIdentifier("abc"), displayName: "abc", pathRelativeToDocumentStorage: "abc")

        // Comment NSFileProviderManager.add(...) and uncomment NSFileProviderManager.remove(...) to fix the issue
        NSFileProviderManager.add(domain, completionHandler: { _ in })
        //NSFileProviderManager.remove(domain, completionHandler: { _ in })
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

