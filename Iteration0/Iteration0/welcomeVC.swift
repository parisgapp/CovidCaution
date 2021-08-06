//
//  welcomeVC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/4/21.
//

import UIKit

class welcomeVC: UIViewController {
    
    var name : String = ""
    var score : Int = 0
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "welcome, \(name), click a button to get started."
    }
    
    @IBAction func takeQuiz(_ sender: Any) {
        performSegue(withIdentifier: "takeQuizSegue", sender: self)
    }
    
    @IBAction func viewResources(_ sender: Any) {
        performSegue(withIdentifier: "viewResourcesSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "takeQuizSegue" {
            let destinationVC = segue.destination as? ViewController
            
            destinationVC?.name = name
            
        } else if segue.identifier == "viewResourcesSegue" {
            let destinationVC = segue.destination as? allResourcesVC
        }
    }
}
