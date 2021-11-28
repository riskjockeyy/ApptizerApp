//
//  ContentModel.swift
//  ApptizerApp
//
//  Created by Bharat Singh on 28/11/21.
//

import Foundation

class ContentModel: ObservableObject {
    
    var data = [Apptizer]()
    init () {
        let url = URL(string: Constant.jsonURL)
        
        if url != nil {
      
            
            
            let session = URLSession.shared
            
            let dataTask = session.dataTask(with: url!) { data, response, error in
                
                if error == nil {
                    
                    do {
                        let deocder = JSONDecoder()
                        
                        let apptizer = try  deocder.decode(Responses.self, from: data!)
                        let result = apptizer.request
                        
                        for b in result {
                            b.getImageData()
                        }
                        DispatchQueue.main.async {
                          
                            self.data = apptizer.request
                            
                            
                        }
                      
                        
                    }
                    catch {
                        print(error.localizedDescription)
                    }
                    
                }
            }
            dataTask.resume()
        }
    }
        
    
}
