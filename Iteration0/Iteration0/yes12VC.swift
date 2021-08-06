//
//  yes12VC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/4/21.
//

import UIKit

class yes12VC: UIViewController {

    @IBOutlet weak var source2: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateTextView1()
    }
    
    @IBAction func yes12DonePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "yes12Final", sender: self)
    }
    
    func updateTextView1() {
           let path = "https://childrenswi.org/newshub/stories/covid-19-recommendations-kids-under-12 "
           let text = source2.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "more precautions for children ages 12 and under")
           let font = source2.font
           let textColor = source2.textColor
           source2.attributedText = attributedString
           source2.font = font
           source2.textColor = textColor
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "yes12Final" {
            let destinationVC = segue.destination as? finalVC
        }
    }

}
