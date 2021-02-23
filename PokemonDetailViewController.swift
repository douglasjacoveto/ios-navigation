//
//  PokemonDetailViewController.swift
//  navigation
//
//  Created by Jose Douglas Jacoveto on 23/02/21.
//

import UIKit

class PokemonDetailViewController: UIViewController {
 
    @IBOutlet weak var pokemonNameView: UILabel!
    @IBOutlet weak var pokemonDescriptionView: UILabel!
    @IBOutlet weak var pokemonImageView: UIImageView!
    
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        pokemonNameView.text = pokemon?.name
        pokemonImageView.image = pokemon?.image
        pokemonDescriptionView.text = pokemon?.description
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
