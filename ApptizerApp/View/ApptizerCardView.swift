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
        
    
            GeometryReader { geo in
                ZStack {
                Rectangle()
                        .foregroundColor(.white)
                        
            VStack {
                
            
            let uiImage = UIImage(data: apptizer.imageData ?? Data())
            
                Image(uiImage: uiImage ?? UIImage())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                
                Text(apptizer.name)
                    .bold()
                    .padding(10)
                
                Text(apptizer.description)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                
                    HStack {
                        VStack {
                            Text("Calories")
                            Text(String(apptizer.calories))
                        }.padding(8)
                        VStack {
                            Text("Carbs")
                            Text(String("\(apptizer.carbs) g"))
                        }
                        .padding(8)
                        VStack {
                            Text("Protein")
                            Text(String("\(apptizer.protein) g"))
                        }
                        .padding(8)
                    }
                    .padding(.horizontal)
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(height: 48)
                            .cornerRadius(10)
                        
                        Text(String(format: "$ %.2f - Add To Order", (apptizer.price)))
                            .foregroundColor(.white)
                            
                    }
                    .padding([.horizontal, .bottom], 15)
                
            
            }
                    
            }
                .padding(.leading, 30)
                .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                     .cornerRadius(15)
                     .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
        }
        
        
        
        
    }
}

