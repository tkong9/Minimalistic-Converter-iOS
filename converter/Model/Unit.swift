//
//  Unit.swift
//  converter
//
//  Created by TAEWON KONG on 1/3/20.
//  Copyright © 2020 TAEWON KONG. All rights reserved.
//

import Foundation

struct Unit {
    
    var unitName: String
    
    // MARK: - Category
    var symbol: String {
        switch unitName {
        case "Angle":
            return "lessthan"
        case "Area":
            return "circle.lefthalf.fill"
        case "Bits":
            return "0.square"
        case "Density":
            return "lock"
        case "Force":
            return "bolt.horizontal"
        case "Length":
            return "slider.horizontal.3"
        case "Mass":
            return "cube"
        case "Pressure":
            return "icloud"
        case "Speed":
            return "speedometer"
        case "Temperature":
            return "thermometer"
        case "Time":
            return "hourglass"
        case "Volume":
            return "capsule.fill"
        default:
            return ""
        }
    }
    
    // MARK: - Unit Picker
    var unitPicker: [[String]] {
        switch unitName {
        case "Area":
            return [["Square Meter", "Square Meter"],
                    ["Square Kilometer", "Square Kilometer"],
                    ["Square Centimeter", "Square Centimeter"],
                    ["Square Millimeter", "Square Millimeter"],
                    ["Square Micrometer", "Square Micrometer"],
                    ["Hectare", "Hectare"],
                    ["Square Mile", "Square Mile"],
                    ["Square Yard", "Square Yard"],
                    ["Square Foot", "Square Foot"],
                    ["Square Inch", "Square Inch"],
                    ["Acre", "Acre"]
            ]
        case "Temperature":
            return [["Celcius", "Celcius"],
                    ["Fahrenheight", "Fahrenheight"],
                    ["Kelvin", "Kelvin"]
            ]
        case "Length":
            return [["Meter", "Meter"],
                    ["Kilometer", "Kilometer"],
                    ["Centimeter", "Centimeter"],
                    ["Millimeter", "Millimeter"],
                    ["Micrometer", "Micrometer"],
                    ["Nanometer", "Nanometer"],
                    ["Mile", "Mile"],
                    ["Yard", "Yard"],
                    ["Foot", "Foot"],
                    ["Inch", "Inch"],
                    ["Light Year", "Light Year"]
            ]
        case "Volume":
            return [[]]
        
        default:
            return [["Unit picker"]]
        }
    }
    
    // MARK: - Temperature
    func CtoK(c: String) -> String {
        let result = NSExpression(format: "\(c) + 273.15").toFloatingPoint().expressionValue(with: nil, context: nil)!
        print("\(result)")
        return "\(result)"
    }
    func CtoF(c: String) -> String {
        let result = String(Double(c)! * 1.8 + 32)
        print(result)
        return result
    }
    func CtoC(c: String) -> String {
        let result = String(Double(c)!)
        print(result)
        return result
    }
    func FtoF(f: String) -> String {
        return f
    }
    func FtoC(f: String) -> String {
        return String((Double(f)! - 32) * (Double(5) / 9))
    }
    func FtoK(f: String) -> String {
        return String((Double(f)! - 32) * (Double(5) / 9) + 273.15)
    }
    func KtoK(k: String) -> String {
        return k
    }
    func KtoC(k: String) -> String {
        return String(Double(k)! - 273.15)
    }
    func KtoF(k: String) -> String {
        return String((Double(k)! - 273.15) * (Double(9) / 5) + 32.0)
    }
    
    // MARK: - Convert
    func convert(unit: Unit, userInput: String, from: String, to: String) -> String {
        print("unitName: \(unit.unitName), input: \(userInput), from: \(from), to: \(to)")
        switch unit.unitName {
        case "Temperature":
            if from == K.c && to == K.c {
                return CtoC(c: userInput)
            } else if from == K.c && to == K.f {
                return CtoF(c: userInput)
            } else if from == K.c && to == K.k {
                return CtoK(c: userInput)
            } else if from == K.f && to == K.f {
                return FtoF(f: userInput)
            } else if from == K.f && to == K.c {
                return FtoC(f: userInput)
            } else if from == K.f && to == K.k {
                return FtoK(f: userInput)
            } else if from == K.k && to == K.k {
                return KtoK(k: userInput)
            } else if from == K.k && to == K.c {
                return KtoC(k: userInput)
            } else if from == K.k && to == K.f {
                return KtoF(k: userInput)
            }
        default:
            return "Error"
        }
        return "Error"
    }
}

struct K {
    static let c = "Celcius"
    static let k = "Kelvin"
    static let f = "Fahrenheight"
}

extension NSExpression {
    
    func toFloatingPoint() -> NSExpression {
        
        switch expressionType {
        case .constantValue:
            if let value = constantValue as? NSNumber {
                return NSExpression(forConstantValue: NSNumber(value: value.doubleValue))
            }
        case .function:
            let newArgs = arguments.map { $0.map { $0.toFloatingPoint() } }
            return NSExpression(forFunction: operand, selectorName: function, arguments: newArgs)
        case .conditional:
            return NSExpression(forConditional: predicate, trueExpression: self.true.toFloatingPoint(), falseExpression: self.false.toFloatingPoint())
        case .unionSet:
            return NSExpression(forUnionSet: left.toFloatingPoint(), with: right.toFloatingPoint())
        case .intersectSet:
            return NSExpression(forIntersectSet: left.toFloatingPoint(), with: right.toFloatingPoint())
        case .minusSet:
            return NSExpression(forMinusSet: left.toFloatingPoint(), with: right.toFloatingPoint())
        case .subquery:
            if let subQuery = collection as? NSExpression {
                return NSExpression(forSubquery: subQuery.toFloatingPoint(), usingIteratorVariable: variable, predicate: predicate)
            }
        case .aggregate:
            if let subExpressions = collection as? [NSExpression] {
                return NSExpression(forAggregate: subExpressions.map { $0.toFloatingPoint() })
            }
        case .anyKey:
            fatalError("anyKey not yet implemented")
        case .block:
            fatalError("block not yet implemented")
        case .evaluatedObject, .variable, .keyPath:
            break // Nothing to do here
        @unknown default:
            fatalError()
        }
        return self
    }
}
