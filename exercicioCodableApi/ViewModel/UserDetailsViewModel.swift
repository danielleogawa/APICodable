//
//  UserDetailsViewModel.swift
//  exercicioCodableApi
//
//  Created by Danielle Nozaki Ogawa on 2022/06/18.
//

import Foundation

class UserDetailsViewModel {
    private let user: Usuario
    
    init(user: Usuario){
        self.user = user
    }
    
    func getName( )-> String {
        return user.name
    }
    
    func getEmail( )-> String {
        return user.email
    }
    
    func getAddressStreet( )-> String {
        return user.address.street
    }
    
    func getAddressZipCode( )-> String {
        return user.address.zipcode
    }
    
    func getAddressCity( )-> String {
        return user.address.city
    }
    
}
