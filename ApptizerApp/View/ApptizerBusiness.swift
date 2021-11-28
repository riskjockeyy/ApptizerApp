//
//  ApptizerBusiness.swift
//  ApptizerApp
//
//  Created by Bharat Singh on 28/11/21.
//

import SwiftUI

struct ApptizerBusiness: View {
    
    var apptizer: Apptizer
    
    var body: some View {
        
        
        
        HStack {
            let uiImage = UIImage(data: apptizer.imageData ??  Data())
            
            Image(uiImage: uiImage ?? UIImage())
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(5)
                .scaledToFit()
            VStack(alignment: .leading) {
                Text(apptizer.name)
                    .bold()
                Text(String("$\(apptizer.price)"))
            }
            .padding(.leading)
        }
        
        
        
        
        
    }
}


