//
//  yesVaccineVC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/4/21.
//

import UIKit

class yesVaccineVC: UIViewController {

    var name : String = ""
    
    @IBOutlet weak var source1: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateTextView()

    }

    @IBAction func yesVaccineFinalPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "yesVaccineFinal", sender: self)
    }
    
    
    func updateTextView() {
           let path = "https://coronavirus-response-county-of-hawaii-hawaiicountygis.hub.arcgis.com/pages/vaccine-information"
           let text = source1.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "more vaccine site information")
           let font = source1.font
           let textColor = source1.textColor
           source1.attributedText = attributedString
           source1.font = font
           source1.textColor = textColor
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "yesVaccineFinal" {
            let destinationVC = segue.destination as? finalVC
            destinationVC?.name = name
        }
    }

}
