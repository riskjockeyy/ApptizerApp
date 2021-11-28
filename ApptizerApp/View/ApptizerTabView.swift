//
//  ContentView.swift
//  ApptizerApp
//
//  Created by Bharat Singh on 28/11/21.
//

import SwiftUI

struct ApptizerTabView: View {
    @EnvironmentObject var model : ContentModel
   // @State var selectedIndex = 1
    var body: some View {
        
        TabView() {
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

