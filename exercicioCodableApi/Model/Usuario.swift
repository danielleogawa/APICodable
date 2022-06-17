//
//  Weather.swift
//  exercicioCodableApi
//
//  Created by Danielle Nozaki Ogawa on 2022/06/17.
//

import Foundation


struct Usuario: Codable {
    var id: Int
    var name: String
    var username: String
    var email: String
    var address: Address
    var phone: String
    var website: String
    var company: Company

}
struct Address: Codable {
    var street: String
    var suite: String
    var city: String
    var zipcode: String
}
struct Company: Codable {
    var name: String
    var catchPhrase: String
    var bs: String
}

