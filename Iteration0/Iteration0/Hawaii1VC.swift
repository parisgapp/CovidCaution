//
//  Hawaii1VC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/3/21.
//

import UIKit

class Hawaii1VC: UIViewController {
    
    var name : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func hawaiiCounty(_ sender: UIButton) {
        performSegue(withIdentifier: "hawaiiCountyButton", sender: self)
       
    }
    
    @IBAction func honoluluCounty(_ sender: UIButton) {
        performSegue(withIdentifier: "honoluluCountyButton", sender: self)
    }

    @IBAction func mauiCounty(_ sender: UIButton) {
        performSegue(withIdentifier: "mauiCountyButton", sender: self)
    }
    
    @IBAction func kauaiCounty(_ sender: UIButton) {
        performSegue(withIdentifier: "kauaiCountyButton", sender: self)
    }
    
    @IBAction func kalawaoCounty(_ sender: UIButton) {
        performSegue(withIdentifier: "kalawaoCountyButton", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "hawaiiCountyButton" {
            let destinationVC = segue.destination as? hawaiiCountyVC
            destinationVC?.name = name
        } else if segue.identifier == "honoluluCountyButton" {
            let destinationVC = segue.destination as? honoluluCountyVC
        } else if segue.identifier == "mauiCountyButton" {
            let destinationVC = segue.destination as? mauiCountyVC
        } else if segue.identifier == "kauaiCountyButton" {
            let destinationVC = segue.destination as? kauaiCountyVC
        } else if segue.identifier == "kalawaoCountyButton" {
            let destinationVC = segue.destination as? kalawaoCountyVC
        }
    }

}
