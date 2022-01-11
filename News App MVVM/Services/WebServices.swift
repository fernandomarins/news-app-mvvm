//
//  WebServices.swift
//  News App MVVM
//
//  Created by Fernando Marins on 11/01/22.
//

import Foundation

class WebServices {
    
    static let shared = WebServices()
    
    func getArticles(url: URL, completion: @escaping([Article]?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                do {
                    let responseObjc = try JSONDecoder().decode(Articles.self, from: data)
                    completion(responseObjc.articles)
                } catch {
                    print(error)
                    completion(nil)
                }
            }
        }.resume()
    }
    
}
