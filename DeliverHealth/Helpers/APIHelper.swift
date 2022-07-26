//
//  APIHelper.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/23/22.
//

import Foundation

class APIHelper: NSObject {
    
    static func fetchUrl<T: Decodable>(url: URL, model: T.Type, completion: @escaping ([T]?) -> ()){
        URLSession.shared.dataTask(with: url) { data, response, error in
            if (error != nil){
                print(error?.localizedDescription)
                completion(nil)
                return
            }
            guard let data = data else { return }
            if let decodedResponse = try? JSONDecoder().decode([T].self, from: data) {
                completion(decodedResponse)
            } else {
                completion(nil)
            }
            
        
        }.resume()
    }
    
}
