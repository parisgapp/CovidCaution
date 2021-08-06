//
//  askNameVC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/4/21.
//

import UIKit

class askNameVC: UIViewController {
    

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func continueFirst(_ sender: UIButton) {
        performSegue(withIdentifier: "firstContinue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstContinue" {
            let destinationVC = segue.destination as? welcomeVC
            if let name = nameTextField.text {
                destinationVC?.name = name
            }
        }
    }

}
