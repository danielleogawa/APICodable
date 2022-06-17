//
//  NomeTableViewCell.swift
//  exercicioCodableApi
//
//  Created by Danielle Nozaki Ogawa on 2022/06/17.
//

import UIKit

class NomeTableViewCell: UITableViewCell {

    @IBOutlet weak var nomeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCell(viewModel: UsuarioViewModel){
        nomeLabel.text = viewModel.getNome()
    }

}
