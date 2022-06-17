//
//  UsuarioViewModel.swift
//  exercicioCodableApi
//
//  Created by Danielle Nozaki Ogawa on 2022/06/17.
//

import Foundation

class UsuarioViewModel {
    var usuario: Usuario
    
    init(usuario: Usuario){
        self.usuario = usuario
    }
    
    func getNome() -> String {
        return usuario.name
    }
    
}
