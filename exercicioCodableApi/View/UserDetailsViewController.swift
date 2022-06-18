//
//  UserDetailsViewController.swift
//  exercicioCodableApi
//
//  Created by Danielle Nozaki Ogawa on 2022/06/18.
//

import UIKit

class UserDetailsViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    
    var viewModel: UserDetailsViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureScreen()
    }
    
    private func configureScreen(){
        guard let viewModel = viewModel else { return }
        DispatchQueue.main.async {
            self.nameLabel.text = viewModel.getName()
            self.emailLabel.text = viewModel.getEmail()
            self.zipCodeLabel.text = viewModel.getAddressZipCode()
            self.streetLabel.text = viewModel.getAddressStreet()
            self.cityLabel.text = viewModel.getAddressCity()
        }
    }

}
