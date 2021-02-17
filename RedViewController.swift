//
//  RedViewController.swift
//  navigation
//
//  Created by Jose Douglas Jacoveto on 17/02/21.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Red"
        //print(navigationController?.viewControllers)
        // Do any additional setup after loading the view.
    }

    @IBAction func didSelectGreen(_ sender: Any) {
        guard let greenViewController = navigationController?.viewControllers[2] else { return }
        navigationController?.popToViewController(greenViewController, animated: true)
    }
    
    @IBAction func didSelectRoot(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func didPresentBlue(_ sender: Any) {
        let yellowController = YellowViewController(nibName: "YellowViewController", bundle:nil)
        
        present(yellowController, animated: true, completion: nil)
    }
    
    @IBAction func didSelectPrevious(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
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
