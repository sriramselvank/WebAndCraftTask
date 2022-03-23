//
//  DataModal.swift
//  EcommerceTask
//
//  Created by RoundsEdge Iconn on 23/03/22.
//  Copyright © 2022 sriram. All rights reserved.
//

import Foundation

struct DataModal : Decodable{
    
    let homeData : [HomeData]
}

struct HomeData : Decodable{
    let type : String
    let values : [Values]

}
struct Values : Decodable{
    let id : Int
    let name : String?
    let image_url, banner_url : String?
    let image : String?
    let actual_price : String?
    let offer_price  : String?
    let offer : Int?
    let is_express : Bool?
    
    }

