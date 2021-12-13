//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Sandhil Eldhose on 17/10/2021.
//

import SwiftUI

@main
struct SpotifiedApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    let viewModelFactory = ViewModelFactory()
    var body: some Scene {
        WindowGroup {
            WelcomeView(viewModel: viewModelFactory.makeWelcomeViewModel())
        }
    }
}
