//
//  hawaiiCountyVC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/3/21.
//

import UIKit

class hawaiiCountyVC: UIViewController {
    
    var name : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func hawaiiCountyYes(_ sender: Any) {
        performSegue(withIdentifier: "hawaiiCountyYes", sender: self)
    }
    
    
    @IBAction func hawaiiCountyNo(_ sender: Any) {
        performSegue(withIdentifier: "hawaiiCountyNo", sender: self)
       //  destinationVC?.name = name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "hawaiiCountyYes" {
            let destinationVC = segue.destination as? hawaiiYesVC
        
        } else if segue.identifier == "hawaiiCountyNo" {
            let destinationVC = segue.destination as? hawaiiNoVC
            destinationVC?.name = name
        }
    }
    
}
