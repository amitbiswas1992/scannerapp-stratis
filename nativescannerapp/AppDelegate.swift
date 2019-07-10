//
//  AppDelegate.swift
//  nativescannerapp
//
//  Created by Maze Geek on 7/7/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//

import UIKit
import ScanditBarcodeScanner

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private let App_KEY = "AZv90DDDLbS2KcZlCTPEbPQbxArdCR3/vFhhzGA2EjPfe3RZvk2uYm1R9BAtNMZXl2wEeBlRHYjKajO17UQrr7NFZwnyJtXo3yzCxdNQyAAiWRDcWTM7t1tZyQ2tWe9eq3lXfCZ9z0YBCOETeRPJz3UERfcAJyLk8V44yc5ucFRQUvQtnj1rrrw3HtwQq3z5fdz7aw/UWXfkCL3B0uy93i9Ntub8aGZS0OO/9U5BRLhEvFsQOs/hth0WMyUl7EJEKEhK8/EUk3okfaPVaI9MMGmLLlYY3TVb29ehxhEebZieoEBpYc04w01+/p6CbG91ZFfBSFj9i8pmgs0KBkIfp+WOy7JF+JLBO7/l/bGgubAPIASsL+tIz4ws8+qGFkkXQ7zmEvq217cDnG7vl+n43SLSwzGLk/RmYumZBfuNVx6ZzGNNbLX02zyEnFr9vzBApNbcOR4020yIrxlnhVkyxDRoy5opceBkVXKxq3U/F9lmcCe+8MfkiChyl7sH2c0u0CEUbvFoRY8k0coYrP2a3hhBQ/GSHOJW5GKUfM1WzFGQdaM63G9gnrNKjbBzgJeCAvXKZk0NBd2I3gbmWlOVG6FGe2nlIFOUN5mJUk3aJFeJu848PZNKKGoO/h9PofkdGxwR9Tyxlhj2xQhBjyTtBsk35N+1lBouRprby36b3diNs2Kex7Jl/kpnmmHooUqIhhgtCFaIQImXXWkibKF2s6b/1/iISY0h3rqayexUivKNcZuJvBywH92K55kYoacAvmhSonB6Ag7ewDYMlf6LsOzKD6AIcGlu+PBWYMxNjrzkKbBy7bk0vAnZUx1FEassCWg3"


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        SBSLicense.setAppKey(App_KEY)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

