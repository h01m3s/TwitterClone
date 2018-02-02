//
//  Service.swift
//  TwitterClone
//
//  Created by Weijie Lin on 2/1/18.
//  Copyright © 2018 Weijie Lin. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {
    
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    
    static let sharedInstance = Service()
    
    func fetchHomeFeed(completion: @escaping (HomeDatasource) -> ()) {
        
        let request: APIRequest<HomeDatasource, JSONError> = tron.swiftyJSON.request("/twitter/home")
        
        request.perform(withSuccess: { (homeDatasource) in
            completion(homeDatasource)
        }) { (err) in
            print("Failed to fetch json.", err)
        }
    }
    
    class JSONError: JSONDecodable {
        required init(json: JSON) throws {
            print("JSON ERROR.")
        }
    }
    
}
