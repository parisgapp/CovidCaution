//
//  noVaccineVC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/4/21.
//

import UIKit

class noVaccineVC: UIViewController {
    
    var name : String = ""

    @IBOutlet weak var source1: UITextView!
    @IBOutlet weak var source2: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateTextView()
        updateTextView1()
        
    }
    
    @IBAction func noVaccineFinalPressed(_ sender: Any) {
        performSegue(withIdentifier: "noVaccineFinal", sender: self)
    }
    
    func updateTextView() {
           let path = "https://www.hopkinsmedicine.org/health/conditions-and-diseases/coronavirus/covid19-vaccine-hesitancy-12-things-you-need-to-know"
           let text = source1.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "more about common misconceptions")
           let font = source1.font
           let textColor = source1.textColor
           source1.attributedText = attributedString
           source1.font = font
           source1.textColor = textColor
       }

    func updateTextView1() {
           let path = "https://higotvaccinated.com/"
           let text = source2.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "more about the hawaii incentive program")
           let font = source2.font
           let textColor = source2.textColor
           source2.attributedText = attributedString
           source2.font = font
           source2.textColor = textColor
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "noVaccineFinal" {
            let destinationVC = segue.destination as? finalVC
        }
    }
    
}
