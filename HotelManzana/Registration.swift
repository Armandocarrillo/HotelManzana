//
//  Registration.swift
//  HotelManzana
//
//  Created by Armando Carrillo on 17/07/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import Foundation

struct Registration {
    var firstName : String
    var lastName : String
    var emailAddress: String
    
    var checkInDate : Date
    var checkOutDate : Date
    var numberOfAdults : Int
    var numberOfChildren: Int
    
    
    var roomType: RoomType
    var wifi: Bool
}

struct RoomType: Equatable {
    var id : Int
    var name : String
    var shortName: String
    var price: Int
    
    init(id:Int, name:String, shortName:String,price:Int) {
        self.id = id
        self.name = name
        self.shortName = shortName
        self.price = price
    }
    static var all: [RoomType]{
        return [RoomType(id: 0, name: "Two Queens", shortName: "2Q", price: 179),
                RoomType(id: 1, name: "One King", shortName: "K", price: 209),
                RoomType(id: 2, name: "Penthouse Suite", shortName: "PHS", price: 309)]
    }
    
}

func ==(lhs:RoomType, rhs: RoomType) -> Bool{
    return lhs.id == rhs.id
}
