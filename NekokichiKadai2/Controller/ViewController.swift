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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSegmentedControl()
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        switch fourArithmeticOperationsSegment.selectedSegmentIndex {
        case 0:
            var calculateModel = CalculateAdditionModel()
            let result = calculateModel.getCaculatedResult(values: [
                Int(inputNumField1.text ?? "") ?? 0,
                Int(inputNumField2.text ?? "") ?? 0
            ])
            calculatedResultLabel.text = "\(result)"
        case 1:
            var calculateModel = CalculateSubtractionModel()
            let result = calculateModel.getCaculatedResult(values: [
                Int(inputNumField1.text ?? "") ?? 0,
                Int(inputNumField2.text ?? "") ?? 0
            ])
            calculatedResultLabel.text = "\(result)"
        case 2:
            var calculateModel = CalculateMultiplicationModel()
            let result = calculateModel.getCaculatedResult(values: [
                Int(inputNumField1.text ?? "") ?? 0,
                Int(inputNumField2.text ?? "") ?? 0
            ])
            calculatedResultLabel.text = "\(result)"
        case 3:
            var calculateModel = CalculateDivisionModel()
            let result = calculateModel.getCaculatedResult(values: [
                Int(inputNumField1.text ?? "") ?? 0,
                Int(inputNumField2.text ?? "") ?? 0
            ])
            calculatedResultLabel.text = "\(result)"
        default:
            break
        }
    }
    
    private func setUpSegmentedControl() {
        fourArithmeticOperationsSegment.setTitle("+", forSegmentAt: 0)
        fourArithmeticOperationsSegment.setTitle("-", forSegmentAt: 1)
        fourArithmeticOperationsSegment.insertSegment(withTitle: "×", at: 2, animated: true)
        fourArithmeticOperationsSegment.insertSegment(withTitle: "÷", at: 3, animated: true)
    }
    
}

