//
//  BlueViewController.swift
//  navigation
//
//  Created by Jose Douglas Jacoveto on 17/02/21.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Blue"

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didSelectRed(_ sender: Any) {
        
        let redController = RedViewController(nibName: "RedViewController", bundle:nil)
        
        navigationController?.pushViewController(redController, animated: true)
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
