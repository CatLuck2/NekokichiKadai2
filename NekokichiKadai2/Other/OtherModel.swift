//
//  OtherModel.swift
//  NekokichiKadai2
//
//  Created by Nekokichi on 2022/02/26.
//

import UIKit

class OtherModel {
    enum CalculateMode {
        case addition
        case subtraction
        case multiplication
        case division
    }
    
    private var calculateMode: CalculateMode!
    
    func setCalculateMode(mode: CalculateMode) {
        calculateMode = mode
    }
    
    func calculate(value1: Double, value2: Double) -> String {
        switch calculateMode {
        case .addition:
            return String(value1 + value2)
        case .subtraction:
            return String(value1 - value2)
        case .multiplication:
            return String(value1 * value2)
        case .division:
            if value2 != 0 {
                return String(value1 / value2)
            } else {
                return "割る数には0以外を入れてください"
            }
        default:
            return "0.0"
        }
    }

}
