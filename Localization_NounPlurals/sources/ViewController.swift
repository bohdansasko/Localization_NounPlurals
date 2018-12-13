//
//  ViewController.swift
//  Localization_NounPlurals
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var localizationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

