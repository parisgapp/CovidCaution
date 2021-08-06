//
//  no12VC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/4/21.
//

import UIKit

class no12VC: UIViewController {

    @IBOutlet weak var source1: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateTextView()

    }
    
    @IBAction func no12FinalPressed(_ sender: Any) {
        performSegue(withIdentifier: "no12Final", sender: self)
    }
    
    
    func updateTextView() {
           let path = "https://www.cdc.gov/coronavirus/2019-ncov/vaccines/fully-vaccinated.html"
           let text = source1.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "more precautions for vaccinated individuals")
           let font = source1.font
           let textColor = source1.textColor
           source1.attributedText = attributedString
           source1.font = font
           source1.textColor = textColor
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "no12Final" {
            let destinationVC = segue.destination as? finalVC
        }
    }

}
