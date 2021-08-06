//
//  ViewController.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    var name : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func hawaiiPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "hawaiiButton", sender: self)
    }
    
    
    @IBAction func rhodeIslandPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "riButton", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "hawaiiButton" {
            let destinationVC = segue.destination as? Hawaii1VC
            
            destinationVC?.name = name
            
        } else if segue.identifier == "riButton" {
            let destinationVC = segue.destination as? RI1VC
            
        }
    }
    
}

