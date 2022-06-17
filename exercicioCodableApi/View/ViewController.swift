//
//  ViewController.swift
//  exercicioCodableApi
//
//  Created by Danielle Nozaki Ogawa on 2022/06/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var listaTableView: UITableView!
    

    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        listaTableView.dataSource = self
        viewModel.loadUser()
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.getQuantidadeDeUsuarios()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       if let cell = tableView.dequeueReusableCell(withIdentifier: "nomeCell", for: indexPath) as? NomeTableViewCell {
           cell.configureCell(viewModel: viewModel.getCellViewModel(usuario: viewModel.getUsuario(posicao: indexPath.row)))
           return cell
        }
        return UITableViewCell()
    }
    
    
}



extension ViewController: UserViewModelDelegate {
    func loadUserSucess(user: [Usuario]) {
        DispatchQueue.main.async {
            print(user.count)
            self.listaTableView.reloadData()
        }
    }
    
    func lodUserFailure(error: Error) {
        print(error)
    }
    
    
}
