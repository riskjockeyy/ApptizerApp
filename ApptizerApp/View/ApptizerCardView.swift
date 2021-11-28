//
//  ApptizerCardView.swift
//  ApptizerApp
//
//  Created by Bharat Singh on 28/11/21.
//

import SwiftUI

struct ApptizerCardView: View {
    var apptizer: Apptizer
    var body: some View {
        
        VStack {
            
        
        let uiImage = UIImage(data: apptizer.imageData ?? Data())
        
            Image(uiImage: uiImage ?? UIImage())
                .resizable()
                .frame(width: 300, height: 300)
                .scaledToFit()
            
            Text(apptizer.name)
                .bold()
                .padding()
            
            Text(apptizer.description)
                .multilineTextAlignment(.center)
                .padding()
            
            Group {
                HStack {
                    VStack {
                        Text("Calories")
                        Text(String(apptizer.calories))
                    }.padding()
                    VStack {
                        Text("Carbs")
                        Text(String("\(apptizer.carbs) g"))
                    }
                    .padding()
                    VStack {
                        Text("Protein")
                        Text(String("\(apptizer.protein) g"))
                    }
                    .padding()
                }
                .padding(.horizontal)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.green)
                        .frame(height: 48)
                        .cornerRadius(5)
                    
                    Text(String(format: "$ %.2f - Add To Order", (apptizer.price)))
                        .foregroundColor(.white)
                        
                }
                .padding(.horizontal)
            }
        
        }
    }
}

