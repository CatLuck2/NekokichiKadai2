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
    
    private func setUpSegmentedControl() {
        fourArithmeticOperationsSegment.setTitle("+", forSegmentAt: 0)
        fourArithmeticOperationsSegment.setTitle("-", forSegmentAt: 1)
        fourArithmeticOperationsSegment.insertSegment(withTitle: "×", at: 2, animated: true)
        fourArithmeticOperationsSegment.insertSegment(withTitle: "÷", at: 3, animated: true)
    }
    
}

