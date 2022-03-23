//
//  WebAPI.swift
//  EcommerceTask
//
//  Created by RoundsEdge Iconn on 23/03/22.
//  Copyright © 2022 sriram. All rights reserved.
//

import Foundation

struct Webservice {
    static let sharedInstance = Webservice()
    
    func getDataForAPI(onSucess:@escaping(DataModal)-> Void){
        
        if let url = URL(string: "https://run.mocky.io/v3/69ad3ec2-f663-453c-868b-513402e515f0"){
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url) { (data, response, error) in
            
            if error != nil{
                return
            }
            
            guard let data = data else {return}
            
            do{
                let responseData = try JSONDecoder().decode(DataModal.self, from : data)
               //print(responseData)
                onSucess(responseData)
                
            }catch{
                print(error)
            }
        }
            task.resume()
    }
        
        
    }
}
