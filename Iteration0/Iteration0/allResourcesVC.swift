//
//  allResourcesVC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/4/21.
//

import UIKit

class allResourcesVC: UIViewController {

    @IBOutlet weak var source1: UITextView!
    @IBOutlet weak var source2: UITextView!
    @IBOutlet weak var source4: UITextView!
    @IBOutlet weak var source3: UITextView!
    @IBOutlet weak var source5: UITextView!
    @IBOutlet weak var source6: UITextView!
    @IBOutlet weak var source7: UITextView!
    @IBOutlet weak var source8: UITextView!
    
    override func viewDidLoad() {
           super.viewDidLoad()
           updateTextView()
           updateTextView1()
           updateTextView2()
           updateTextView3()
           updateTextView4()
           updateTextView5()
           updateTextView6()
           updateTextView7()
       }
       
       func updateTextView() {
           let path = "https://www.cdc.gov/coronavirus/2019-ncov/vaccines/fully-vaccinated.html"
           let text = source1.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "precautions for vaccinated people")
           let font = source1.font
           let textColor = source1.textColor
           source1.attributedText = attributedString
           source1.font = font
           source1.textColor = textColor
       }
       
       func updateTextView1() {
           let path = "https://childrenswi.org/newshub/stories/covid-19-recommendations-kids-under-12"
           let text = source2.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "for families with children ages 12 and under")
           let font = source2.font
           let textColor = source2.textColor
           source2.attributedText = attributedString
           source2.font = font
           source2.textColor = textColor
       }
       
       func updateTextView2() {
           let path = "https://www.hopkinsmedicine.org/health/conditions-and-diseases/coronavirus/covid19-vaccine-hesitancy-12-things-you-need-to-know"
           let text = source3.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "common vaccine misconceptions")
           let font = source3.font
           let textColor = source3.textColor
           source3.attributedText = attributedString
           source3.font = font
           source3.textColor = textColor
       }
       
       func updateTextView3() {
           let path = "https://higotvaccinated.com/"
           let text = source4.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "hawaii vaccine incentive program")
           let font = source4.font
           let textColor = source4.textColor
           source4.attributedText = attributedString
           source4.font = font
           source4.textColor = textColor
       }
       
       func updateTextView4() {
           let path = "https://www.ri.gov/press/view/41656"
           let text = source5.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "rhode island vaccine incentive program")
           let font = source5.font
           let textColor = source5.textColor
           source5.attributedText = attributedString
           source5.font = font
           source5.textColor = textColor
       }
       
       func updateTextView5() {
           let path = "https://www.hopkinsmedicine.org/health/conditions-and-diseases/coronavirus"
           let text = source6.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "what is covid-19?")
           let font = source6.font
           let textColor = source6.textColor
           source6.attributedText = attributedString
           source6.font = font
           source6.textColor = textColor
       }
       
       func updateTextView6() {
           let path = "https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html"
           let text = source7.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "covid-19 symptoms")
           let font = source7.font
           let textColor = source7.textColor
           source7.attributedText = attributedString
           source7.font = font
           source7.textColor = textColor
       }
       
       func updateTextView7() {
           let path = "https://www.cdc.gov/coronavirus/2019-ncov/transmission/index.html"
           let text = source8.text ?? ""
           let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "how does covid-19 spread?")
           let font = source8.font
           let textColor = source8.textColor
           source8.attributedText = attributedString
           source8.font = font
           source8.textColor = textColor
       }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
