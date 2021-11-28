//
//  Apptizer.swift
//  ApptizerApp
//
//  Created by Bharat Singh on 28/11/21.
//

import Foundation

struct Responses: Decodable {
    
    var request = [Apptizer]()
}

class Apptizer:  Decodable, Identifiable {
    
  @Published var imageData: Data?
    
    var id: Int
    var carbs:Int
    var imageURL: String
    var calories: Int
    var price: Double
    var protein:Int
    var name: String
    var description:String
    
    
    enum CodingKeys: String, CodingKey {
        
        case id
        case carbs
        case imageURL
        case calories
        case price
        case protein
        case name
        case description
    }
    
    
    
    func getImageData() {
     


        if let url = URL(string: imageURL) {
            let session = URLSession.shared

            let dataTask = session.dataTask(with: url) { data, response, error in

                if error == nil {
                    DispatchQueue.main.async {

                        self.imageData = data!
                    }

                }
            }
            dataTask.resume()
        }
    }


}


        



