//
//  Calculate.swift
//  Caculatoro
//
//  Created by tran the quan on 01/02/2023.
//

import Foundation
extension FloatingPoint {
    var isInt: Bool {
        return floor(self) == self
    }
}
extension String {

    private func allNumsToDouble() -> String {

        let symbolsCharSet = "."
        let fullCharSet = "0123456789" + symbolsCharSet
        var i = 0
        var result = ""
        let chars = Array(self)
        print(chars)
        while i < chars.count {
            if fullCharSet.contains(chars[i]) {
                var numString = String(chars[i])
                i += 1
                loop: while i < chars.count {
                    if fullCharSet.contains(chars[i]) {
                        numString += String(chars[i])
                        i += 1
                    } else {
                        break loop
                    }
                }
                if let num = Double(numString) {
                    result += "\(num)"
                } else {
                    result += numString

                }
            } else {
                result += String(chars[i])
                i += 1
            }
        }
        return result
    }

    func calculate() -> NSNumber {
        let transformedString = allNumsToDouble()
        print(transformedString)
        let expr = NSExpression(format: transformedString)
        return expr.expressionValue(with: nil, context: nil) as! NSNumber
    }
}
