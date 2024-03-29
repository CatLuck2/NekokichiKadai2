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
        let value1 = Double(inputNumField1.text ?? "") ?? 0
        let value2 = Double(inputNumField2.text ?? "") ?? 0
        // 除算以外でも、inputNumField2が０なら、警告が出てしまう
        // 数値以外が入力された場合を考慮していない
        // 早期に値をチェックせず、必要のない処理を実行してしまう
//        guard inputNumField2.text != "0" else {
//            calculatedResultLabel.text = "割る数には0以外を入力してください"
//            return
//        }

        /*
         配列の添字でモデルを自動決定
         例：配列の変数[添字]
            let calculateModel: CalculateModelProtocol = [
              CalculateAdditionModel(),
              CalculateSubtractionModel(),
              CalculateMultiplicationModel(),
              CalculateDivisionModel()
            ][fourArithmeticOperationsSegment.selectedSegmentIndex]
         */
        var calculateModel: CalculateModelProtocol!
        switch fourArithmeticOperationsSegment.selectedSegmentIndex {
        case 0:
            calculateModel = CalculateAdditionModel()
        case 1:
            calculateModel = CalculateSubtractionModel()
        case 2:
            calculateModel = CalculateMultiplicationModel()
        case 3:
            if value2 != 0 {
                calculateModel = CalculateDivisionModel()
            } else {
                calculatedResultLabel.text = "割る数には0以外を入力してください"
                return
            }
        default:
            break
        }
        // Int型で渡しており、Model側でDoubleの変換の手間が発生
//        let result = calculateModel.caculatedResult(values: [value1, value2])
        calculatedResultLabel.text = calculateModel.caculatedResult(values: [value1, value2])
    }
}
