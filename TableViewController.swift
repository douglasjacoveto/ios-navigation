//
//  TableViewController.swift
//  navigation
//
//  Created by Jose Douglas Jacoveto on 23/02/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    let pikachu = Pokemon(name: "Pikachu", description: "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.", image: UIImage(named: "pikachu"))

    let squirtle = Pokemon(name: "Squirtle", description: "When it retracts its long neck into its shell, it squirts out water with vigorous force.", image: UIImage(named: "squirtle"))
        
    let bulbasaur = Pokemon(name: "Bulbasaur", description: "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.", image: UIImage(named: "bulbasaur") )

    let growlithe = Pokemon(name: "Growlithe", description: "It has a brave and trustworthy nature. It fearlessly stands up to bigger and stronger foes.", image: UIImage(named: "growlithe"))
    
    let charmander = Pokemon(name: "Charmander", description: "I'dont know.", image: UIImage(named: "charmander"))
    
    var selectPokemon: Pokemon?

    var pokemonList: [Pokemon] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonList = [pikachu, squirtle, bulbasaur, growlithe, charmander]

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pokemonList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else { return UITableViewCell()}
        
        
        
        let row = indexPath.row
        //let section = indexPath.section
        let pokemon = pokemonList[row]

//        cell.textLabel?.text = pokemon.name//"linha \(row), section \(section)"
//        cell.imageView?.image = pokemon.image
        
        cell.setup(with: pokemon)
        
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        selectPokemon = pokemonList[indexPath.row]
//        print("pokemon selecionado \(selectPokemon)")
        performSegue(withIdentifier: "segueDetailPokemon" , sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? PokemonDetailViewController else { return }
        viewController.pokemon = selectPokemon
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
