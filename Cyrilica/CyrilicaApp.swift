//
//  CyrilicaApp.swift
//  Cyrilica
//
//  Created by Felix on 21.10.21.
//

import SwiftUI



@main
struct CyrilicaApp: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  
  static var orientationLock = UIInterfaceOrientationMask.all //By default you want all your views to rotate freely
  
  func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
    return AppDelegate.orientationLock
  }
}
