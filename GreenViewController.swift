//
//  GreenViewController.swift
//  navigation
//
//  Created by Jose Douglas Jacoveto on 17/02/21.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPresentBlue(_ sender: Any) {
        guard let blueController = storyboard?.instantiateViewController(identifier: "BlueViewController") else { return}
       
            blueController.modalTransitionStyle = .flipHorizontal
            
            present(blueController, animated: true, completion: nil)
    }
    
    @IBAction func didSelectBlue(_ sender: Any) {
//        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let blueController = storyboard?.instantiateViewController(identifier: "BlueViewController") else { return}
        
        navigationController?.pushViewController(blueController, animated: true)
    
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
