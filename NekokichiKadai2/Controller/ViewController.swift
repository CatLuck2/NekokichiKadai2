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
        let value1 = Int(inputNumField1.text ?? "") ?? 0
        let value2 = Int(inputNumField2.text ?? "") ?? 0

        guard value2 != 0 else {
            calculatedResultLabel.text = "割る数には0以外を入力してください"
            return
        }

        let calculateModel: CalculateModelProtocol = [
            CalculateAdditionModel(),
            CalculateSubtractionModel(),
            CalculateMultiplicationModel(),
            CalculateDivisionModel()
        ][fourArithmeticOperationsSegment.selectedSegmentIndex]

        let result = calculateModel.calculate(values: [value1, value2])
        calculatedResultLabel.text = "\(result)"
    }
}
