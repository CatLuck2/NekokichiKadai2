//
//  CalculateModel.swift
//  NekokichiKadai2
//
//  Created by Nekokichi on 2022/02/20.
//

import UIKit

protocol CalculateModelProtocol {
    /*
     副作用のあるメソッドは動詞、ないメソッドは名詞
     計算結果を返すだけなので、getは不要
     func caculatedResult(values: [Int]) -> Double
     */
    func caculatedResult(values: [Double]) -> String
}

struct CalculateAdditionModel: CalculateModelProtocol {
    func caculatedResult(values: [Double]) -> String {
        // 引数が空の場合を考慮してなかった
        guard !values.isEmpty else { return String(0.0) }
        var result: Double = values[0]
        /*
         dropFirst()
         配列の最初の値を除外する
         */
        for value in values.dropFirst() {
            result += value
        }
        return String(result)
    }
}

struct CalculateSubtractionModel: CalculateModelProtocol {
    func caculatedResult(values: [Double]) -> String {
        guard !values.isEmpty else { return String(0.0) }
        var result: Double = values[0]
        for value in values.dropFirst() {
            result -= value
        }
        return String(result)
    }
}

struct CalculateMultiplicationModel: CalculateModelProtocol {
    func caculatedResult(values: [Double]) -> String {
        guard !values.isEmpty else { return String(0.0) }
        var result: Double = values[0]
        for value in values.dropFirst() {
            result *= value
        }
        return String(result)
    }
}

struct CalculateDivisionModel: CalculateModelProtocol {
    func caculatedResult(values: [Double]) -> String {
        guard !values.isEmpty else { return String(0.0) }
        var result: Double = values[0]
        for value in values.dropFirst() {
            result /= Double(value)
        }
        return String(result)
    }
}
