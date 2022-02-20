//
//  CalculateModel.swift
//  NekokichiKadai2
//
//  Created by Nekokichi on 2022/02/20.
//

import UIKit

protocol CalculateModelProtocol {
    func getCaculatedResult(values: [Int]) -> Int
}

struct CalculateAdditionModel {
    func getCaculatedResult(values: [Int]) -> Int {
        var result: Int = values[0]
        for i in 1..<values.count {
            result += values[i]
        }
        return result
    }
}

struct CalculateSubtractionModel {
    func getCaculatedResult(values: [Int]) -> Int {
        var result: Int = values[0]
        for i in 1..<values.count {
            result -= values[i]
        }
        return result
    }
}

struct CalculateMultiplicationModel {
    func getCaculatedResult(values: [Int]) -> Int {
        var result: Int = values[0]
        for i in 1..<values.count {
            result *= values[i]
        }
        return result
    }
}

struct CalculateDivisionModel {
    func getCaculatedResult(values: [Int]) -> Int {
        var result: Int = values[0]
        for i in 1..<values.count {
            result /= values[i]
        }
        return result
    }
}
