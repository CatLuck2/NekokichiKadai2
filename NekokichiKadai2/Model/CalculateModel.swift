//
//  CalculateModel.swift
//  NekokichiKadai2
//
//  Created by Nekokichi on 2022/02/20.
//

import UIKit

protocol CalculateModelProtocol {
    func calculate(values: [Int]) -> Double
}

struct CalculateAdditionModel: CalculateModelProtocol {
    func calculate(values: [Int]) -> Double {
        guard !values.isEmpty else { return 0 }
        var result: Int = values[0]
        for value in values.dropFirst() {
            result += value
        }
        return Double(result)
    }
}

struct CalculateSubtractionModel: CalculateModelProtocol {
    func calculate(values: [Int]) -> Double {
        guard !values.isEmpty else { return 0 }
        var result: Int = values[0]
        for value in values.dropFirst() {
            result -= value
        }
        return Double(result)
    }
}

struct CalculateMultiplicationModel: CalculateModelProtocol {
    func calculate(values: [Int]) -> Double {
        guard !values.isEmpty else { return 0 }
        var result: Int = values[0]
        for value in values.dropFirst() {
            result *= value
        }
        return Double(result)
    }
}

struct CalculateDivisionModel: CalculateModelProtocol {
    func calculate(values: [Int]) -> Double {
        guard !values.isEmpty else { return 0 }
        var result: Double = Double(values[0])
        for value in values.dropFirst() {
            result /= Double(value)
        }
        return Double(result)
    }
}
