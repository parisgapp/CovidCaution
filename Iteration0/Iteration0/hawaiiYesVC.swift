//
//  hawaiiYesVC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/3/21.
//

import UIKit

class hawaiiYesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func yes12Pressed(_ sender: Any) {
        performSegue(withIdentifier: "yes12Segue", sender: self)
    }
    
    
    @IBAction func no12Pressed(_ sender: Any) {
        performSegue(withIdentifier: "no12Segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "yes12Segue" {
            let destinationVC = segue.destination as? yes12VC
        } else if segue.identifier == "no12Segue" {
            let destinationVC = segue.destination as? no12VC
        }
    }
    
}
