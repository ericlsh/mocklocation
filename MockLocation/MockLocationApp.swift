//
//  MockLocationApp.swift
//  MockLocation
//
//  Created by Eric Leung on 2023-10-16.
//

import SwiftUI

@main
struct MockLocationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
