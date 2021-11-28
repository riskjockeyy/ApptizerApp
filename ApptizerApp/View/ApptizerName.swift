//
//  ApptizerName.swift
//  ApptizerApp
//
//  Created by Bharat Singh on 28/11/21.
//

import SwiftUI

struct ApptizerName: View {
    var apptizer: [Apptizer]
    var body: some View {
        
        
        NavigationView {
            ScrollView {
                LazyVStack {
                    VStack(alignment: .leading) {
                            
                            ForEach(apptizer) { apptizer in
                                VStack {
                                    NavigationLink {
                                        ApptizerCardView(apptizer: apptizer)
                                    } label: {
                                        ApptizerBusiness(apptizer: apptizer)
                                    }
                                    .accentColor(.black)

                                    
                                }
                            }
                    }
                }
            }
            .navigationTitle("Apptizer")
        }
        
        
        
        
    }
}

