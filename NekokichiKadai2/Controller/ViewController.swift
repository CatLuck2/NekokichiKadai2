//
//  ViewController.swift
//  NekokichiKadai2
//
//  Created by Nekokichi on 2022/02/20.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak private var inputNumField1: UITextField!
    @IBOutlet weak private var inputNumField2: UITextField!
    @IBOutlet weak private var fourArithmeticOperationsSegment: UISegmentedControl!
    @IBOutlet weak private var calculatedResultLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        guard inputNumField2.text != "0" else {
            calculatedResultLabel.text = "割る数には0以外を入力してください"
            return
        }
        
        var calculateModel: CalculateModelProtocol!
        switch fourArithmeticOperationsSegment.selectedSegmentIndex {
        case 0:
            calculateModel = CalculateAdditionModel()
        case 1:
            calculateModel = CalculateSubtractionModel()
        case 2:
            calculateModel = CalculateMultiplicationModel()
        case 3:
            calculateModel = CalculateDivisionModel()
        default:
            break
        }
        let result = calculateModel.getCaculatedResult(values: [
            Int(inputNumField1.text ?? "") ?? 0,
            Int(inputNumField2.text ?? "") ?? 0
        ])
        calculatedResultLabel.text = "\(result)"
    }
}

