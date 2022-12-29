//
//  ExchangeBrain.swift
//  Exchange
//
//  Created by Marina Karpova on 20.12.2022.
//

import Foundation


struct ExchangeBrain {
    
    mutating func exchange(input: String, exchangeValue: Double, currency: String) -> String {
        
        let someNumb = NumberFormatter().number(from: input)?.doubleValue ?? 0.0
        let exchangeCalculate = someNumb / exchangeValue
        let stringResult = "\(String(format: "%.2f", exchangeCalculate)) \(currency)"
        return stringResult
    }
    
}
