//
//  ViewModel.swift
//  exercicioCodableApi
//
//  Created by Danielle Nozaki Ogawa on 2022/06/17.
//

import Foundation

protocol UserViewModelDelegate {
    func loadUserSucess(user: [Usuario])
    func lodUserFailure(error: Error)
}

class ViewModel {
    var delegate: UserViewModelDelegate?

    private let session = URLSession.shared
    private let decoder = JSONDecoder()
    private var quantidadeDeUsuarios: Int = 0
    private var users: [Usuario] = []
    
    
    func getCellViewModel(usuario: Usuario) -> UsuarioViewModel{
        let usuario = UsuarioViewModel(usuario: usuario)
        return usuario
    }
    
    func getUsuario(posicao: Int)-> Usuario {
        return users[posicao]
    }
    
    func loadUser(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
        let task = session.dataTask(with: url) { data, _, error in
            
            if let error = error {
                self.delegate?.lodUserFailure(error: error)
            }
            guard let data = data else {
                self.delegate?.loadUserSucess(user: [])
                return
            }
            
            do {
                self.users = try self.decoder.decode([Usuario].self, from: data)
                self.delegate?.loadUserSucess(user: self.users)
                self.quantidadeDeUsuarios = self.users.count
            } catch {
                self.delegate?.lodUserFailure(error: error)
            }

        }
        task.resume()
    }
    
    func getQuantidadeDeUsuarios() -> Int{
        return quantidadeDeUsuarios
    }
}
