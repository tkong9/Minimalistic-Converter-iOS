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
            return [[K.celsius, K.celsius],
                    [K.fahrenheit, K.fahrenheit],
                    [K.kelvin, K.kelvin]
            ]
        case "Length":
            return [[K.meter, K.meter],
                    [K.kilometer, K.kilometer],
                    [K.centimeter, K.centimeter],
                    [K.millimeter, K.millimeter],
                    [K.micrometer, K.micrometer],
                    [K.nanometer, K.nanometer],
                    [K.mile, K.mile],
                    [K.yard, K.yard],
                    [K.foot, K.foot],
                    [K.inch, K.inch],
                    [K.lightYear, K.lightYear]
            ]
        case "Volume":
            return [[]]
        default:
            return [["Unit picker"]]
        }
    }
    
    // MARK: - Temperature
    func CtoK(c: String) -> Double {
        let result = NSExpression(format: "\(c) + 273.15").toFloatingPoint().expressionValue(with: nil, context: nil)!
        return result as! Double
    }
    func CtoF(c: String) -> Double {
        let result = Double(c)! * 1.8 + 32
        return result
    }
    func FtoC(f: String) -> Double {
        return (Double(f)! - 32) * (Double(5) / 9)
    }
    func FtoK(f: String) -> Double {
        return (Double(f)! - 32) * (Double(5) / 9) + 273.15
    }
    func KtoC(k: String) -> Double {
        return Double(k)! - 273.15
    }
    func KtoF(k: String) -> Double {
        return (Double(k)! - 273.15) * (Double(9) / 5) + 32.0
    }
    
    // MARK: Length
    func meterToKilometer(meter: String) -> Double {
        return Double(meter)! / 1000
    }
    func meterToCentimeter(meter: String) -> Double {
        return Double(meter)! * 100
    }
    
    // MARK: - Convert
    func convert(unit: Unit, userInput: String, from: String, to: String) -> Double {
        print("unitName: \(unit.unitName), input: \(userInput), from: \(from), to: \(to)")
        switch unit.unitName {
        case "Temperature":
            if from == K.celsius && to == K.fahrenheit {
                return CtoF(c: userInput)
            } else if from == K.celsius && to == K.kelvin {
                return CtoK(c: userInput)
            } else if from == K.fahrenheit && to == K.celsius {
                return FtoC(f: userInput)
            } else if from == K.fahrenheit && to == K.kelvin {
                return FtoK(f: userInput)
            } else if from == K.kelvin && to == K.celsius {
                return KtoC(k: userInput)
            } else if from == K.kelvin && to == K.fahrenheit {
                return KtoF(k: userInput)
            }
        default:
            print("Error occured in Model unit convert function")
            return -1
        }
        print("Error occured in Model unit convert function")
        return -1
    }
}

// MARK: Constant Struct
struct K {
    // Temperature
    static let celsius = "Celcius"
    static let kelvin = "Kelvin"
    static let fahrenheit = "Fahrenheight"
    // Length
    static let meter = "Meter"
    static let kilometer = "Kilometer"
    static let centimeter = "Centimeter"
    static let millimeter = "Millimeter"
    static let micrometer = "Micrometer"
    static let nanometer = "Nanometer"
    static let mile = "Mile"
    static let yard = "Yard"
    static let foot = "Foot"
    static let inch = "Inch"
    static let lightYear = "Light Year"
}

// MARK: Extension for handling decimal points when using NSExpression.
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
