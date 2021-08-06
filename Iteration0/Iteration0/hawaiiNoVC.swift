//
//  hawaiiNoVC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/3/21.
//

import UIKit

class hawaiiNoVC: UIViewController {
    
    var name : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func yesVaccine(_ sender: Any) {
        performSegue(withIdentifier: "planOnVaccine", sender: self)
    }
    
    @IBAction func noVaccine(_ sender: Any) {
        performSegue(withIdentifier: "noPlanOnVaccine", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "planOnVaccine" {
            let destinationVC = segue.destination as? yesVaccineVC
            destinationVC?.name = name
        } else if segue.identifier == "noPlanOnVaccine" {
            let destinationVC = segue.destination as? noVaccineVC
        }
    }
    
}
