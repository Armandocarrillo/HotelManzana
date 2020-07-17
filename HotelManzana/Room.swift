//
//  Room.swift
//  HotelManzana
//
//  Created by Armando Carrillo on 17/07/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import Foundation

struct RoomType: Equatable {
    var id : Int
    var name : String
    var shortName: String
    var price: Int
}

func ==(lhs:RoomType, rhs: RoomType) -> Bool{
    return lhs.id == rhs.id
}
