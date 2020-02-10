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
    func meterToMillimeter(meter: String) -> Double {
        return Double(meter)! * 1000
    }
    func meterToMicrometer(meter: String) -> Double {
        return Double(meter)! * 1000000
    }
    func meterToNanometer(meter: String) -> Double {
        return Double(meter)! * 1000000000
    }
    func meterToMile(meter: String) -> Double {
        return Double(meter)! * 0.000621371
    }
    func meterToYard(meter: String) -> Double {
        return Double(meter)! * 1.0936132983
    }
    func meterToFoot(meter: String) -> Double {
        return Double(meter)! * 0.3048
    }
    func meterToInch(meter: String) -> Double {
        return Double(meter)! * 0.0254000508
    }
    func meterToLightyear(meter: String) -> Double {
        return Double(meter)! * 1.0570008340247E-16
    }
    func kilometerToMeter(kilometer: String) -> Double {
        return Double(kilometer)! * 1000
    }
    func kilometerToCentimeter(kilometer: String) -> Double {
        return Double(kilometer)! * 100000
    }
    func kilometerToMillimeter(kilometer: String) -> Double {
        return Double(kilometer)! * 1000000
    }
    func kilometerToMicrometer(kilometer: String) -> Double {
        return Double(kilometer)! * 1e+9
    }
    func kilometerToNanometer(kilometer: String) -> Double {
        return Double(kilometer)! * 1e+12
    }
    func kilometerToMile(kilometer: String) -> Double {
        return Double(kilometer)! * 0.621371
    }
    func kilometerToYard(kilometer: String) -> Double {
        return Double(kilometer)! * 1093.61
    }
    func kilometerToFoot(kilometer: String) -> Double {
        return Double(kilometer)! * 3280.84
    }
    func kilometerToInch(kilometer: String) -> Double {
        return Double(kilometer)! * 39370.1
    }
    func kilometerToLightyear(kilometer: String) -> Double {
        return Double(kilometer)! * 1.057e-13
    }
    func centimeterToMeter(centimeter: String) -> Double {
        return Double(centimeter)! / 100
    }
    func centimeterToKilometer(centimeter: String) -> Double {
        return Double(centimeter)! * 1e-5
    }
    func centimeterToMillimeter(centimeter: String) -> Double {
        return Double(centimeter)! * 10
    }
    func centimeterToMicrometer(centimeter: String) -> Double {
        return Double(centimeter)! * 10000
    }
    func centimeterToNanometer(centimeter: String) -> Double {
        return Double(centimeter)! * 1e7
    }
    func centimeterToMile(centimeter: String) -> Double {
        return Double(centimeter)! * 6.21371e-6
    }
    func centimeterToYard(centimeter: String) -> Double {
        return Double(centimeter)! * 0.0109361
    }
    func centimeterToFoot(centimeter: String) -> Double {
        return Double(centimeter)! * 0.0328084
    }
    func centimeterToInch(centimeter: String) -> Double {
        return Double(centimeter)! * 0.393701
    }
    func centimeterToLightyear(centimeter: String) -> Double {
        return Double(centimeter)! * 1.057e-18
    }
    func millimeterToMeter(millimeter: String) -> Double {
        return Double(millimeter)! / 1000
    }
    func millimeterToKilometer(millimeter: String) -> Double {
        return Double(millimeter)! * 1e-6
    }
    func millimeterToCentimeter(millimeter: String) -> Double {
        return Double(millimeter)! * 0.1
    }
    func millimeterToMicrometer(millimeter: String) -> Double {
        return Double(millimeter)! * 1000
    }
    func millimeterToNanometer(millimeter: String) -> Double {
        return Double(millimeter)! * 1000000
    }
    func millimeterToMile(millimeter: String) -> Double {
        return Double(millimeter)! * 6.21371e-7
    }
    func millimeterToYard(millimeter: String) -> Double {
        return Double(millimeter)! * 0.00109361
    }
    func millimeterToFoot(millimeter: String) -> Double {
        return Double(millimeter)! * 0.00328084
    }
    func millimeterToInch(millimeter: String) -> Double {
        return Double(millimeter)! * 0.0393701
    }
    func millimeterToLightyear(millimeter: String) -> Double {
        return Double(millimeter)! * 1.057e-19
    }
    func micrometerToMeter(micrometer: String) -> Double {
        return Double(micrometer)!  * 1e-6
    }
    func micrometerToKilometer(micrometer: String) -> Double {
        return Double(micrometer)! * 1e-9
    }
    func micrometerToCentimeter(micrometer: String) -> Double {
        return Double(micrometer)! * 1e-4
    }
    func micrometerToMillimeter(micrometer: String) -> Double {
        return Double(micrometer)! * 0.001
    }
    func micrometerToNanometer(micrometer: String) -> Double {
        return Double(micrometer)! * 1000
    }
    func micrometerToMile(micrometer: String) -> Double {
        return Double(micrometer)! * 6.21371e-10
    }
    func micrometerToYard(micrometer: String) -> Double {
        return Double(micrometer)! * 1.09361e-6
    }
    func micrometerToFoot(micrometer: String) -> Double {
        return Double(micrometer)! * 3.28084e-6
    }
    func micrometerToInch(micrometer: String) -> Double {
        return Double(micrometer)! * 3.93701e-5
    }
    func micrometerToLightyear(micrometer: String) -> Double {
        return Double(micrometer)! * 1.057e-22
    }
    func nanometerToMeter(nanometer: String) -> Double {
        return Double(nanometer)! * 1e-9
    }
    func nanometerToKilometer(nanometer: String) -> Double {
        return  Double(nanometer)! * 1e-12
    }
    func nanometerToCentimeter(nanometer: String) -> Double {
        return Double(nanometer)! * 1e-7
    }
    func nanometerToMillimeter(nanometer: String) -> Double {
        return Double(nanometer)! * 1e-6
    }
    func nanometerToMicrometer(nanometer: String) -> Double {
        return Double(nanometer)! * 0.001
    }
    func nanometerToMile(nanometer: String) -> Double {
        return Double(nanometer)! * 6.21371e-13
    }
    func nanometerToYard(nanometer: String) -> Double {
        return Double(nanometer)! * 1.09361e-9
    }
    func nanometerToFoot(nanometer: String) -> Double {
        return Double(nanometer)! * 3.28084e-9
    }
    func nanometerToInch(nanometer: String) -> Double {
        return Double(nanometer)! * 3.93701e-8
    }
    func nanometerToLightyear(nanometer: String) -> Double {
        return Double(nanometer)! * 1.057e-25
    }
    func mileToMeter(mile: String) -> Double {
        return Double(mile)! * 1609.34
    }
    func mileToKilometer(mile: String) -> Double {
        return Double(mile)! * 1.60934
    }
    func mileToCentimeter(mile: String) -> Double {
        return Double(mile)! * 160934
    }
    func mileToMillimeter(mile: String) -> Double {
        return Double(mile)! * 1.609e6
    }
    func mileToMicrometer(mile: String) -> Double {
        return Double(mile)! * 1.609e9
    }
    func mileToNanometer(mile: String) -> Double {
        return Double(mile)! * 1.609e12
    }
    func mileToYard(mile: String) -> Double {
        return Double(mile)! * 1760
    }
    func mileToFoot(mile: String) -> Double {
        return Double(mile)! * 5280
    }
    func mileToInch(mile: String) -> Double {
        return Double(mile)! * 63360
    }
    func mileToLightyear(mile: String) -> Double {
        return Double(mile)! * 1.70108e-13
    }
    func yardToMeter(yard: String) -> Double {
        return Double(yard)! * 0.9144
    }
    func yardToKilometer(yard: String) -> Double {
        return Double(yard)! * 0.0009144
    }
    func yardToCentimeter(yard: String) -> Double {
        return Double(yard)! * 91.44
    }
    func yardToMillimeter(yard: String) -> Double {
        return Double(yard)! * 914.4
    }
    func yardToMicrometer(yard: String) -> Double {
        return Double(yard)! * 914400
    }
    func yardToNanometer(yard: String) -> Double {
        return Double(yard)! * 9.144e+8
    }
    func yardToMile(yard: String) -> Double {
        return Double(yard)! * 0.000568182
    }
    func yardToFoot(yard: String) -> Double {
        return Double(yard)! * 3
    }
    func yardToInch(yard: String) -> Double {
        return Double(yard)! * 36
    }
    func yardToLightyear(yard: String) -> Double {
        return Double(yard)! * 9.66522e-17
    }
    func footToMeter(foot: String) -> Double {
        return Double(foot)! * 0.3048
    }
    func footToKilometer(foot: String) -> Double {
        return Double(foot)! * 0.0003048
    }
    func footToCentimeter(foot: String) -> Double {
        return Double(foot)! * 30.48
    }
    func footToMillimeter(foot: String) -> Double {
        return Double(foot)! * 304.8
    }
    func footToMicrometer(foot: String) -> Double {
        return Double(foot)! * 304800
    }
    func footToNanometer(foot: String) -> Double {
        return Double(foot)! * 3.048e+8
    }
    func footToMile(foot: String) -> Double {
        return Double(foot)! * 0.000189394
    }
    func footToYard(foot: String) -> Double {
        return Double(foot)! * (1 / 3)
    }
    func footToInch(foot: String) -> Double {
        return Double(foot)! * 12
    }
    func footToLightyear(foot: String) -> Double {
        return Double(foot)! * 3.22174e-17
    }
    func inchToMeter(inch: String) -> Double {
        return Double(inch)! * 0.0254
    }
    func inchToKilometer(inch: String) -> Double {
        return Double(inch)! * 2.54e-5
    }
    func inchToCentimeter(inch: String) -> Double {
        return Double(inch)! * 2.54
    }
    func inchToMillimeter(inch: String) -> Double {
        return Double(inch)! * 25.4
    }
    func inchToMicrometer(inch: String) -> Double {
        return Double(inch)! * 25400
    }
    func inchToNanometer(inch: String) -> Double {
        return Double(inch)! * 2.54e+7
    }
    func inchToMile(inch: String) -> Double {
        return Double(inch)! * 1.57828e-5
    }
    func inchToYard(inch: String) -> Double {
        return Double(inch)! * (1 / 36)
    }
    func inchToFoot(inch: String) -> Double {
        return Double(inch)! * (1 / 12)
    }
    func inchToLightyear(inch: String) -> Double {
        return Double(inch)! * 2.68478e-18
    }
    func lightyearToMeter(lightyear: String) -> Double {
        return Double(lightyear)! * 9.461e15
    }
    func lightyearToKilometer(lightyear: String) -> Double {
        return Double(lightyear)! * 9.461e12
    }
    func lightyearToCentimeter(lightyear: String) -> Double {
        return Double(lightyear)! * 9.461e17
    }
    func lightyearToMillimeter(lightyear: String) -> Double {
        return Double(lightyear)! * 9.461e18
    }
    func lightyearToMicrometer(lightyear: String) -> Double {
        return Double(lightyear)! * 9.461e21
    }
    func lightyearToNanometer(lightyear: String) -> Double {
        return Double(lightyear)! * 9.461e24
    }
    func lightyearToMile(lightyear: String) -> Double {
        return Double(lightyear)! * 5.879e12
    }
    func lightyearToYard(lightyear: String) -> Double {
        return Double(lightyear)! * 1.035e16
    }
    func lightyearToFoot(lightyear: String) -> Double {
        return Double(lightyear)! * 3.104e16
    }
    func lightyearToInch(lightyear: String) -> Double {
        return Double(lightyear)! * 3.725e17
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
        case "Length":
            if from == K.meter && to == K.kilometer {
                return meterToKilometer(meter: userInput)
            } else if from == K.meter && to == K.centimeter {
                return meterToCentimeter(meter: userInput)
            } else if from == K.meter && to == K.millimeter {
                return meterToMillimeter(meter: userInput)
            } else if from == K.meter && to == K.micrometer {
                return meterToMicrometer(meter: userInput)
            } else if from == K.meter && to == K.nanometer {
                return meterToNanometer(meter: userInput)
            } else if from == K.meter && to == K.mile {
                return meterToMile(meter: userInput)
            } else if from == K.meter && to == K.yard {
                return meterToYard(meter: userInput)
            } else if from == K.meter && to == K.foot {
                return meterToFoot(meter: userInput)
            } else if from == K.meter && to == K.inch {
                return meterToInch(meter: userInput)
            } else if from == K.meter && to == K.lightYear {
                return meterToLightyear(meter: userInput)
            } else if from == K.kilometer && to == K.meter {
                return kilometerToMeter(kilometer: userInput)
            } else if from == K.kilometer && to == K.centimeter {
                return kilometerToCentimeter(kilometer: userInput)
            } else if from == K.kilometer && to == K.millimeter {
                return kilometerToMillimeter(kilometer: userInput)
            } else if from == K.kilometer && to == K.micrometer {
                return kilometerToMicrometer(kilometer: userInput)
            } else if from == K.kilometer && to == K.nanometer {
                return kilometerToNanometer(kilometer: userInput)
            } else if from == K.kilometer && to == K.mile {
                return kilometerToMile(kilometer: userInput)
            } else if from == K.kilometer && to == K.yard {
                return kilometerToYard(kilometer: userInput)
            } else if from == K.kilometer && to == K.foot {
                return kilometerToFoot(kilometer: userInput)
            } else if from == K.kilometer && to == K.inch {
                return kilometerToInch(kilometer: userInput)
            } else if from == K.kilometer && to == K.lightYear {
                return kilometerToLightyear(kilometer: userInput)
            } else if from == K.centimeter && to == K.meter {
                return centimeterToMeter(centimeter: userInput)
            } else if from == K.centimeter && to == K.kilometer {
                return centimeterToKilometer(centimeter: userInput)
            } else if from == K.centimeter && to == K.millimeter {
                return centimeterToMillimeter(centimeter: userInput)
            } else if from == K.centimeter && to == K.micrometer {
                return centimeterToMicrometer(centimeter: userInput)
            } else if from == K.centimeter && to == K.nanometer {
                return centimeterToNanometer(centimeter: userInput)
            } else if from == K.centimeter && to == K.mile {
                return centimeterToMile(centimeter: userInput)
            } else if from == K.centimeter && to == K.yard {
                return centimeterToYard(centimeter: userInput)
            } else if from == K.centimeter && to == K.foot {
                return centimeterToFoot(centimeter: userInput)
            } else if from == K.centimeter && to == K.inch {
                return centimeterToInch(centimeter: userInput)
            } else if from == K.centimeter && to == K.lightYear {
                return centimeterToLightyear(centimeter: userInput)
            } else if from == K.millimeter && to == K.meter {
                return millimeterToMeter(millimeter: userInput)
            } else if from == K.millimeter && to == K.kilometer {
                return millimeterToKilometer(millimeter: userInput)
            } else if from == K.millimeter && to == K.kilometer {
                return millimeterToKilometer(millimeter: userInput)
            } else if from == K.millimeter && to == K.centimeter {
                return millimeterToCentimeter(millimeter: userInput)
            } else if from == K.millimeter && to == K.micrometer {
                return millimeterToMicrometer(millimeter: userInput)
            } else if from == K.millimeter && to == K.nanometer {
                return millimeterToNanometer(millimeter: userInput)
            } else if from == K.millimeter && to == K.mile {
                return millimeterToMile(millimeter: userInput)
            } else if from == K.millimeter && to == K.yard {
                return millimeterToYard(millimeter: userInput)
            } else if from == K.millimeter && to == K.foot {
                return millimeterToYard(millimeter: userInput)
            } else if from == K.millimeter && to == K.inch {
                return millimeterToInch(millimeter: userInput)
            } else if from == K.millimeter && to == K.lightYear {
                return millimeterToLightyear(millimeter: userInput)
            } else if from == K.centimeter && to == K.meter {
                return centimeterToMeter(centimeter: userInput)
            } else if from == K.centimeter && to == K.kilometer {
                return centimeterToKilometer(centimeter: userInput)
            } else if from == K.centimeter && to == K.millimeter {
                return centimeterToMillimeter(centimeter: userInput)
            } else if from == K.centimeter && to == K.micrometer {
                return centimeterToMicrometer(centimeter: userInput)
            } else if from == K.centimeter && to == K.nanometer {
                return centimeterToNanometer(centimeter: userInput)
            } else if from == K.centimeter && to == K.mile {
                return centimeterToMile(centimeter: userInput)
            } else if from == K.centimeter && to == K.yard {
                return centimeterToYard(centimeter: userInput)
            } else if from == K.centimeter && to == K.foot {
                return centimeterToFoot(centimeter: userInput)
            } else if from == K.centimeter && to == K.inch {
                return centimeterToInch(centimeter: userInput)
            } else if from == K.centimeter && to == K.lightYear {
                return centimeterToLightyear(centimeter: userInput)
            } else if from == K.millimeter && to == K.meter {
                return millimeterToMeter(millimeter: userInput)
            } else if from == K.millimeter && to == K.kilometer {
                return millimeterToKilometer(millimeter: userInput)
            } else if from == K.millimeter && to == K.kilometer {
                return millimeterToKilometer(millimeter: userInput)
            } else if from == K.millimeter && to == K.centimeter {
                return millimeterToCentimeter(millimeter: userInput)
            } else if from == K.millimeter && to == K.micrometer {
                return millimeterToMicrometer(millimeter: userInput)
            } else if from == K.millimeter && to == K.nanometer {
                return millimeterToNanometer(millimeter: userInput)
            } else if from == K.millimeter && to == K.mile {
                return millimeterToMile(millimeter: userInput)
            } else if from == K.millimeter && to == K.yard {
                return millimeterToYard(millimeter: userInput)
            } else if from == K.millimeter && to == K.inch {
                return millimeterToInch(millimeter: userInput)
            } else if from == K.millimeter && to == K.lightYear {
                return millimeterToLightyear(millimeter: userInput)
            } else if from == K.micrometer && to == K.meter {
                return micrometerToMeter(micrometer: userInput)
            } else if from == K.micrometer && to == K.kilometer {
                return micrometerToKilometer(micrometer: userInput)
            } else if from == K.micrometer && to == K.centimeter {
                return micrometerToCentimeter(micrometer: userInput)
            } else if from == K.micrometer && to == K.millimeter {
                return micrometerToMillimeter(micrometer: userInput)
            } else if from == K.micrometer && to == K.nanometer {
                return micrometerToNanometer(micrometer: userInput)
            } else if from == K.micrometer && to == K.mile {
                return micrometerToMile(micrometer: userInput)
            } else if from == K.micrometer && to == K.yard {
                return micrometerToYard(micrometer: userInput)
            } else if from == K.micrometer && to == K.foot {
                return micrometerToFoot(micrometer: userInput)
            } else if from == K.micrometer && to == K.inch {
                return micrometerToInch(micrometer: userInput)
            } else if from == K.micrometer && to == K.lightYear {
                return micrometerToLightyear(micrometer: userInput)
            } else if from == K.nanometer && to == K.meter {
                return micrometerToMeter(micrometer: userInput)
            } else if from == K.nanometer && to == K.kilometer {
                return micrometerToKilometer(micrometer: userInput)
            } else if from == K.nanometer && to == K.centimeter {
                return nanometerToCentimeter(nanometer: userInput)
            } else if from == K.nanometer && to == K.millimeter {
                return nanometerToCentimeter(nanometer: userInput)
            } else if from == K.nanometer && to == K.micrometer {
                return nanometerToMicrometer(nanometer: userInput)
            } else if from == K.nanometer && to == K.mile {
                return nanometerToMile(nanometer: userInput)
            } else if from == K.nanometer && to == K.yard {
                return nanometerToYard(nanometer: userInput)
            } else if from == K.nanometer && to == K.foot {
                return nanometerToYard(nanometer: userInput)
            } else if from == K.nanometer && to == K.inch {
                return nanometerToInch(nanometer: userInput)
            } else if from == K.nanometer && to == K.lightYear {
                return nanometerToLightyear(nanometer: userInput)
            } else if from == K.mile && to == K.meter {
                return mileToMeter(mile: userInput)
            } else if from == K.mile && to == K.kilometer {
                return mileToKilometer(mile: userInput)
            } else if from == K.mile && to == K.centimeter {
                return mileToCentimeter(mile: userInput)
            } else if from == K.mile && to == K.millimeter {
                return mileToMillimeter(mile: userInput)
            } else if from == K.mile && to == K.micrometer {
                return mileToMicrometer(mile: userInput)
            } else if from == K.mile && to == K.nanometer {
                return mileToNanometer(mile: userInput)
            } else if from == K.mile && to == K.yard {
                return mileToYard(mile: userInput)
            } else if from == K.mile && to == K.foot {
                return mileToFoot(mile: userInput)
            } else if from == K.mile && to == K.inch {
                return mileToInch(mile: userInput)
            } else if from == K.mile && to == K.lightYear {
                return mileToLightyear(mile: userInput)
            } else if from == K.yard && to == K.meter {
                return yardToMeter(yard: userInput)
            } else if from == K.yard && to == K.kilometer {
                return yardToKilometer(yard: userInput)
            } else if from == K.yard && to == K.centimeter {
                return yardToCentimeter(yard: userInput)
            } else if from == K.yard && to == K.millimeter {
                return yardToMillimeter(yard: userInput)
            } else if from == K.yard && to == K.micrometer {
                return yardToMicrometer(yard: userInput)
            } else if from == K.yard && to == K.nanometer {
                return yardToNanometer(yard: userInput)
            } else if from == K.yard && to == K.mile {
                return yardToMile(yard: userInput)
            } else if from == K.yard && to == K.foot {
                return yardToFoot(yard: userInput)
            } else if from == K.yard && to == K.inch {
                return yardToInch(yard: userInput)
            } else if from == K.yard && to == K.lightYear {
                return yardToLightyear(yard: userInput)
            } else if from == K.foot && to == K.meter {
                return footToMeter(foot: userInput)
            } else if from == K.foot && to == K.kilometer {
                return footToKilometer(foot: userInput)
            } else if from == K.foot && to == K.centimeter {
                return footToCentimeter(foot: userInput)
            } else if from == K.foot && to == K.millimeter {
                return footToMillimeter(foot: userInput)
            } else if from == K.foot && to == K.micrometer {
                return footToMicrometer(foot: userInput)
            } else if from == K.foot && to == K.nanometer {
                return footToNanometer(foot: userInput)
            } else if from == K.foot && to == K.mile {
                return footToMile(foot: userInput)
            } else if from == K.foot && to == K.yard {
                return footToYard(foot: userInput)
            } else if from == K.foot && to == K.inch {
                return footToInch(foot: userInput)
            } else if from == K.foot && to == K.lightYear {
                return footToLightyear(foot: userInput)
            } else if from == K.inch && to == K.meter {
                return inchToMeter(inch: userInput)
            } else if from == K.inch && to == K.kilometer {
                return inchToKilometer(inch: userInput)
            } else if from == K.inch && to == K.centimeter {
                return inchToCentimeter(inch: userInput)
            } else if from == K.inch && to == K.millimeter {
                return inchToMillimeter(inch: userInput)
            } else if from == K.inch && to == K.micrometer {
                return inchToMicrometer(inch: userInput)
            } else if from == K.inch && to == K.nanometer {
                return inchToNanometer(inch: userInput)
            } else if from == K.inch && to == K.mile {
                return inchToMile(inch: userInput)
            } else if from == K.inch && to == K.yard {
                return inchToYard(inch: userInput)
            } else if from == K.inch && to == K.foot {
                return inchToFoot(inch: userInput)
            } else if from == K.inch && to == K.lightYear {
                return inchToLightyear(inch: userInput)
            } else if from == K.lightYear && to == K.meter {
                return lightyearToMeter(lightyear: userInput)
            } else if from == K.lightYear && to == K.kilometer {
                return lightyearToKilometer(lightyear: userInput)
            } else if from == K.lightYear && to == K.centimeter {
                return lightyearToCentimeter(lightyear: userInput)
            } else if from == K.lightYear && to == K.millimeter {
                return lightyearToMillimeter(lightyear: userInput)
            } else if from == K.lightYear && to == K.micrometer {
                return lightyearToMicrometer(lightyear: userInput)
            } else if from == K.lightYear && to == K.nanometer {
                return lightyearToNanometer(lightyear: userInput)
            } else if from == K.lightYear && to == K.mile {
                return lightyearToMile(lightyear: userInput)
            } else if from == K.lightYear && to == K.yard {
                return lightyearToYard(lightyear: userInput)
            } else if from == K.lightYear && to == K.foot {
                return lightyearToFoot(lightyear: userInput)
            } else if from == K.lightYear && to == K.inch {
                return lightyearToInch(lightyear: userInput)
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
