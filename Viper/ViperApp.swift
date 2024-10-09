// HelloWorldApp.swift
import SwiftUI

@main
struct HelloWorldApp: App {
    var body: some Scene {
        WindowGroup {
            HelloWorldRouter.createModule()
        }
    }
}

