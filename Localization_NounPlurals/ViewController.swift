//
//  ViewController.swift
//  Localization_NounPlurals
//

import UIKit

enum LocalizationKeys: String {
    case JohnPineapples = "johns pineapples count"
    case JohnPineapplesComment = "Johns pineapples count string format to be found in Localized.stringsdict"
}

class ViewController: UIViewController {
    @IBOutlet weak var localizationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        localizationLabel.text =
              getStrCountPineapplesInJonh(count: 0) + "\n"
            + getStrCountPineapplesInJonh(count: 1) + "\n"
            + getStrCountPineapplesInJonh(count: 4) + "\n"
        
    }
    
    private func getStrCountPineapplesInJonh(count: UInt) -> String {
        print("count = \(count)")
        let formatStr = NSLocalizedString(LocalizationKeys.JohnPineapples.rawValue,
                                 comment: LocalizationKeys.JohnPineapplesComment.rawValue)
        let resultStr = String.localizedStringWithFormat(formatStr, count)
        return resultStr
    }

}

