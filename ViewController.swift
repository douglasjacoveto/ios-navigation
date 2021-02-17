//
//  ViewController.swift
//  navigation
//
//  Created by Jose Douglas Jacoveto on 17/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "greenSegue" {
            guard let greenViewController = segue.destination as? GreenViewController else { return }
            print(greenViewController)
            }
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //performSegue(withIdentifier: "greenSegue", sender: nil)
    }
    }



