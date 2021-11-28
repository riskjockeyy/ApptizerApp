//
//  ApptizerAppApp.swift
//  ApptizerApp
//
//  Created by Bharat Singh on 28/11/21.
//

import SwiftUI

@main
struct ApptizerApp: App {
    var body: some Scene {
        WindowGroup {
            ApptizerTabView()
                .environmentObject(ContentModel())
        }
    }
}
