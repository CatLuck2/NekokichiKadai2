//
//  ViewController.swift
//  NekokichiKadai2
//
//  Created by Nekokichi on 2022/02/26.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet private weak var imputNumTextField1: UITextField!
    @IBOutlet private weak var imputNumTextField2: UITextField!
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultTextField: UILabel!
    
    let calculateModel: OtherModel! = OtherModel()
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let num1 = Double(imputNumTextField1.text ?? "") ?? 0.0
        let num2 = Double(imputNumTextField2.text ?? "") ?? 0.0
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            calculateModel.setCalculateMode(mode: .addition)
        case 1:
            calculateModel.setCalculateMode(mode: .subtraction)
        case 2:
            calculateModel.setCalculateMode(mode: .multiplication)
        case 3:
            calculateModel.setCalculateMode(mode: .division)
        default:
            break
        }
        resultTextField.text = calculateModel.calculate(value1: num1, value2: num2)
    }

}
