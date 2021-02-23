//
//  TableViewCell.swift
//  navigation
//
//  Created by Jose Douglas Jacoveto on 23/02/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var pokemonNameView: UILabel!
    
    func setup(with pokemon: Pokemon){
        pokemonImageView.image = pokemon.image
        pokemonNameView.text = pokemon.name
    }
}
