//
//  AngelshotApp.swift
//  Angelshot

import SwiftUI

@main
struct AngelshotApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            FirstpageView()
        }
    }
}
