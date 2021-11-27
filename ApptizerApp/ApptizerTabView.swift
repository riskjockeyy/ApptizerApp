//
//  ContentView.swift
//  ApptizerApp
//
//  Created by Bharat Singh on 28/11/21.
//

import SwiftUI

struct ApptizerTabView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            
            ListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
            OrderView()
                .tabItem {
                    VStack {
                        Image(systemName: "bag")
                        Text("order")
                    }
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ApptizerTabView()
    }
}
