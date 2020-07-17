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
