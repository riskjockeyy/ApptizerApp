//
//  ListView.swift
//  ApptizerApp
//
//  Created by Bharat Singh on 28/11/21.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var model: ContentModel
    
    
    var body: some View {
        
        
        VStack {
            
            ApptizerName(apptizer: model.data)
        }

    }
}

