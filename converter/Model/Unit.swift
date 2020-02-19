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
        case "Angle":
            return [[K.degree, K.degree],
                    [K.gradian, K.gradian],
                    [K.milliradian, K.milliradian],
                    [K.minuteOfArc, K.minuteOfArc],
                    [K.radian, K.radian],
                    [K.secondOfArc, K.secondOfArc]
            ]
        case "Area":
            return [[K.squareMeter, K.squareMeter],
                    [K.squareKilometer, K.squareKilometer],
                    [K.squareCentimeter, K.squareCentimeter],
                    [K.squareMillimeter, K.squareMillimeter],
                    [K.squareMicrometer, K.squareMicrometer],
                    [K.hectare, K.hectare],
                    [K.squareMile, K.squareMile],
                    [K.squareYard, K.squareYard],
                    [K.squareYard, K.squareYard],
                    [K.squareInch, K.squareInch],
                    [K.acre, K.acre],
                    [K.pyeong, K.pyeong]
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
            return [[K.cubicMeter, K.cubicMeter],
                    [K.cubicKilometer, K.cubicKilometer],
                    [K.cubicCentimeter, K.cubicCentimeter],
                    [K.cubicMillimeter, K.cubicMillimeter],
                    [K.liter, K.liter],
                    [K.milliliter,  K.milliliter],
                    [K.usGallon, K.usGallon],
                    [K.usQuart, K.usQuart],
                    [K.usPint, K.usPint],
                    [K.usCup, K.usCup],
                    [K.usFluidOunce,K.usFluidOunce],
                    [K.usTableSpoon, K.usTableSpoon],
                    [K.usTeaSpoon, K.usTeaSpoon],
                    [K.imperialGallon, K.imperialGallon],
                    [K.imperialQuart, K.imperialQuart],
                    [K.imperialPint, K.imperialPint],
                    [K.imperialFluidOunce, K.imperialFluidOunce],
                    [K.imperialTableSpoon, K.imperialTableSpoon],
                    [K.imperialTeaSpoon, K.imperialTeaSpoon],
                    [K.cubicMile, K.cubicMile],
                    [K.cubicYard, K.cubicYard],
                    [K.cubicFoot, K.cubicFoot],
                    [K.cubicInch, K.cubicInch]
            ]
        default:
            return [["Unit picker"]]
        }
    }
    
    // MARK: - Convert
    func convert(unit: Unit, userInput: String, from: String, to: String) -> Double {
        print("unitName: \(unit.unitName), input: \(userInput), from: \(from), to: \(to)")
        switch unit.unitName {
            // MARK: - Temperature Convert
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
            // MARK: - Length Convert
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
            // MARK: - Area Convert
        case "Area":
            if from == K.squareMeter && to == K.squareKilometer {
                return squareMeterToSquareKilometer(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.squareCentimeter {
                return squareMeterToSquareCentimeter(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.squareMillimeter {
                return squareMeterToSquareMillimeter(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.squareMicrometer {
                return squareMeterToSquareMicrometer(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.hectare {
                return squareMeterToHectare(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.squareMile {
                return squareMeterToSquareMile(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.squareYard {
                return squareMeterToSquareYard(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.squareFoot {
                return squareMeterToSquareFoot(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.squareInch {
                return squareMeterToSquareInch(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.acre {
                return squareMeterToAcre(squareMeter: userInput)
            } else if from == K.squareMeter && to == K.pyeong {
                return squareMeterToPyeong(squareMeter: userInput)
            } else if from == K.squareKilometer && to == K.squareMeter {
                return squareKilometerToSquareMeter(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.squareCentimeter {
                return squareKilometerToSquareCentimeter(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.squareMillimeter {
                return squareKilometerToSquareMillimeter(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.squareMicrometer {
                return squareKilometerToSquareMicrometer(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.hectare {
                return squareKilometerToHectare(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.squareMile {
                return squareKilometerToSquareMile(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.squareYard {
                return squareKilometerToSquareYard(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.squareFoot {
                return squareKilometerToSquareFoot(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.squareInch {
                return squareKilometerToSquareInch(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.acre {
                return squareKilometerToAcre(squareKilometer: userInput)
            } else if from == K.squareKilometer && to == K.pyeong {
                return squareKilometerToAcre(squareKilometer: userInput)
            } else if from == K.squareCentimeter && to == K.squareMeter {
                return squareCentimeterToSquareMeter(squareCentimeter: userInput)
            } else if from == K.squareCentimeter && to == K.squareKilometer {
                return squareCentimeterToSquareKilometer(squareCentimeter: userInput)
            } else if from == K.squareCentimeter && to == K.squareMicrometer {
                return squareCentimeterToSquareMicrometer(squareCentimeter: userInput)
            } else if from == K.squareCentimeter && to == K.hectare {
                return squareCentimeterToHectare(squareCentimeter: userInput)
            } else if from == K.squareCentimeter && to == K.squareMile {
                return squareCentimeterToSquareMile(squareCentimeter: userInput)
            } else if from == K.squareCentimeter && to == K.squareYard {
                return squareCentimeterToSquareYard(squareCentimeter: userInput)
            } else if from == K.squareCentimeter && to == K.squareFoot {
                return squareCentimeterToSquareFoot(squareCentimeter: userInput)
            } else if from == K.squareCentimeter && to == K.squareInch {
                return squareCentimeterToSquareInch(squareCentimeter: userInput)
            } else if from == K.squareCentimeter && to == K.acre {
                return squareCentimeterToAcre(squareCentimeter: userInput)
            } else if from == K.squareCentimeter && to == K.pyeong {
                return squareCentimeterToPyeong(squareCentimeter: userInput)
            } else if from == K.squareMillimeter && to == K.squareMeter {
                return squareMillimeterToSquareMeter(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.squareKilometer {
                return squareMillimeterToSquareKilometer(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.squareCentimeter {
                return squareMillimeterToSquareCentimeter(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.squareMicrometer {
                return squareMillimeterToSquareMicroMeter(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.hectare {
                return squareMillimeterToHectare(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.squareMile {
                return squareMillimeterToSquareMile(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.squareYard {
                return squareMillimeterToSquareYard(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.squareFoot {
                return squareMillimeterToSquareFoot(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.squareInch {
                return squareMillimeterToSquareInch(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.acre {
                return squareMillimeterToAcre(squareMillimeter: userInput)
            } else if from == K.squareMillimeter && to == K.pyeong {
                return squareMillimeterToPyeong(squareMillimeter: userInput)
            } else if from == K.squareMicrometer && to == K.squareMeter {
                return squareMicrometerToSquareMeter(squareMicrometer: userInput)
            } else if from == K.squareMicrometer && to == K.squareKilometer {
                return squareMicrometerToSquareKilometer(squareMicrometer: userInput)
            } else if from == K.squareMicrometer && to == K.hectare {
                return squareMicrometerToHectare(squareMicrometer: userInput)
            } else if from == K.squareMicrometer && to == K.squareMile {
                return squareMicrometerToSquareMile(squareMicrometer: userInput)
            } else if from == K.squareMicrometer && to == K.squareYard {
                return squareMicrometerToSquareYard(squareMicrometer: userInput)
            } else if from == K.squareMicrometer && to == K.squareInch {
                return squareMicrometerToSquareInch(squareMicrometer: userInput)
            } else if from == K.squareMicrometer && to == K.acre {
                return squareMicrometerToAcre(squareMicrometer: userInput)
            } else if from == K.squareMicrometer && to == K.pyeong {
                return squareMicrometerToPyeong(squareMicrometer: userInput)
            } else if from == K.hectare && to == K.squareMeter {
                return hectareToSquareMeter(hectare: userInput)
            } else if from == K.hectare && to == K.squareKilometer {
                return hectareToSquareKiloMeter(hectare: userInput)
            } else if from == K.hectare && to == K.squareCentimeter {
                return hectareToSquareCentimeter(hectare: userInput)
            } else if from == K.hectare && to == K.squareMillimeter {
                return hectareToSquareMillimeter(hectare: userInput)
            } else if from == K.hectare && to == K.squareMicrometer {
                return hectareToSquareMicroMeter(hectare: userInput)
            } else if from == K.hectare && to == K.squareMile {
                return hectareToSquareMile(hectare: userInput)
            } else if from == K.hectare && to == K.squareYard {
                return hectareToSquareYard(hectare: userInput)
            } else if from == K.hectare && to == K.squareFoot {
                return hectareToSquareFoot(hectare: userInput)
            } else if from == K.hectare && to == K.squareInch {
                return hectareToSquareInch(hectare: userInput)
            } else if from == K.hectare && to == K.acre {
                return hectareToAcre(hectare: userInput)
            } else if from == K.hectare && to == K.pyeong {
                return hectareToPyeong(hectare: userInput)
            } else if from == K.squareMile && to == K.squareMeter {
                return squareMileToSquareMeter(squareMile: userInput)
            } else if from == K.squareMile && to == K.squareKilometer {
                return squareMileToSquareKilometer(squareMile: userInput)
            } else if from == K.squareMile && to == K.squareMillimeter {
                return squareMileToSquareMillimeter(squareMile: userInput)
            } else if from == K.squareMile && to == K.squareMicrometer {
                return squareMileToSquareMicrometer(squareMile: userInput)
            } else if from == K.squareMile && to == K.hectare {
                return squareMileToHectare(squareMile: userInput)
            } else if from == K.squareMile && to == K.squareYard {
                return squareMileToSquareYard(squareMile: userInput)
            } else if from == K.squareMile && to == K.squareFoot {
                return squareMileToSquareFoot(squareMile: userInput)
            } else if from == K.squareMile && to == K.squareInch {
                return squareMileToSquareInch(squareMile: userInput)
            } else if from == K.squareMile && to == K.acre {
                return squareMileToAcre(squareMile: userInput)
            } else if from == K.squareMile && to == K.pyeong {
                return squareMileToPyeong(squareMile: userInput)
            } else if from == K.squareYard && to == K.squareMeter {
                return squareYardToSquareMeter(squareYard: userInput)
            } else if from == K.squareYard && to == K.squareKilometer {
                return squareYardToSquareKilometer(squareYard: userInput)
            } else if from == K.squareYard && to == K.squareCentimeter {
                return squareYardToSquareCentimeter(squareYard: userInput)
            } else if from == K.squareYard && to == K.squareMillimeter {
                return squareYardToSquareMillimeter(squareYard: userInput)
            } else if from == K.squareYard && to == K.squareMicrometer {
                return squareYardToSquareMicrometer(squareYard: userInput)
            } else if from == K.squareYard && to == K.hectare {
                return squareYardToHectare(squareYard: userInput)
            } else if from == K.squareYard && to == K.squareMile {
                return squareYardToSquareMile(squareYard: userInput)
            } else if from == K.squareYard && to == K.squareFoot {
                return squareYardToSquareFoot(squareYard: userInput)
            } else if from == K.squareYard && to == K.squareInch {
                return squareYardToSquareInch(squareYard: userInput)
            } else if from == K.squareYard && to == K.acre {
                return squareYardToAcre(squareYard: userInput)
            } else if from == K.squareYard && to == K.pyeong {
                return squareYardToPyeong(squareYard: userInput)
            } else if from == K.squareFoot && to == K.squareMeter {
                return squareFootToSquareMeter(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.squareKilometer {
                return squareFootToSquareKilometer(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.squareCentimeter {
                return squareFootToSquareCentimeter(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.squareMillimeter {
                return squareFootToSquareMillimeter(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.squareMicrometer {
                return squareFootToSquareMicrometer(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.hectare {
                return squareFootToHectare(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.squareMile {
                return squareFootToSquareMile(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.squareYard {
                return squareFootToSquareYard(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.squareInch {
                return squareFootToSquareInch(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.acre {
                return squareFootToAcre(squareFoot: userInput)
            } else if from == K.squareFoot && to == K.pyeong {
                return squareFootToPyeong(squareFoot: userInput)
            } else if from == K.squareInch && to == K.squareMeter {
                return squareInchToSquareMeter(squareInch: userInput)
            } else if from == K.squareInch && to == K.squareKilometer {
                return squareInchToSquareKilometer(squareInch: userInput)
            } else if from == K.squareInch && to == K.squareCentimeter {
                return squareInchToSquareCentimeter(squareInch: userInput)
            } else if from == K.squareInch && to == K.squareMillimeter {
                return squareInchToSquareMillimeter(squareInch: userInput)
            } else if from == K.squareInch && to == K.squareMicrometer {
                return squareInchToSquareMicrometer(squareInch: userInput)
            } else if from == K.squareInch && to == K.hectare {
                return squareInchToHectare(squareInch: userInput)
            } else if from == K.squareInch && to == K.squareMile {
                return squareInchToSquareMile(squareInch: userInput)
            } else if from == K.squareInch && to == K.squareYard {
                return squareInchToSquareYard(squareInch: userInput)
            } else if from == K.squareInch && to == K.squareFoot {
                return squareInchToSquareFoot(squareInch: userInput)
            } else if from == K.squareInch && to == K.acre {
                return squareInchToAcre(squareInch: userInput)
            } else if from == K.squareInch && to == K.pyeong {
                return squareInchToPyeong(squareInch: userInput)
            } else if from == K.acre && to == K.squareMeter {
                return acreToSquareMeter(acre: userInput)
            } else if from == K.acre && to == K.squareKilometer {
                return acreToSquareKilometer(acre: userInput)
            } else if from == K.acre && to == K.squareMicrometer {
                return acreToSquareMicrometer(acre: userInput)
            } else if from == K.acre && to == K.hectare {
                return acreToHectare(acre: userInput)
            } else if from == K.acre && to == K.squareMile {
                return acreToSquareMile(acre: userInput)
            } else if from == K.acre && to == K.squareYard {
                return acreToSquareYard(acre: userInput)
            } else if from == K.acre && to == K.squareFoot {
                return acreToSquareFoot(acre: userInput)
            } else if from == K.acre && to == K.squareInch {
                return acreToSquareInch(acre: userInput)
            } else if from == K.acre && to == K.pyeong {
                return acreToPyeong(acre: userInput)
            } else if from == K.pyeong && to == K.squareMeter {
                return pyeongToSquareMeter(pyeong: userInput)
            } else if from == K.pyeong && to == K.squareKilometer {
                return pyeongToSquareKilometer(pyeong: userInput)
            } else if from == K.pyeong && to == K.squareCentimeter {
                return pyeongToSquareCentimeter(pyeong: userInput)
            } else if from == K.pyeong && to == K.squareMillimeter {
                return pyeongToSquareMillimeter(pyeong: userInput)
            } else if from == K.pyeong && to == K.squareMicrometer {
                return pyeongToSquareMicrometer(pyeong: userInput)
            } else if from == K.pyeong && to == K.hectare {
                return pyeongToHectare(pyeong: userInput)
            } else if from == K.pyeong && to == K.squareMile {
                return pyeongToSquareMile(pyeong: userInput)
            } else if from == K.pyeong && to == K.squareYard {
                return pyeongToSquareYard(pyeong: userInput)
            } else if from == K.pyeong && to == K.squareFoot {
                return pyeongToSquareFoot(pyeong: userInput)
            } else if from == K.pyeong && to == K.squareInch {
                return pyeongToSquareInch(pyeong: userInput)
            } else if from == K.pyeong && to == K.acre {
                return pyeongToAcre(pyeong: userInput)
            }
            // MARK: - Angle Convert
        case "Angle":
            if from == K.degree && to == K.gradian {
                return degreeToGradian(degree: userInput)
            } else if from == K.degree && to == K.milliradian {
                return degreeToMilliradian(degree: userInput)
            } else if from == K.degree && to == K.minuteOfArc {
                return degreeToMinuteofArc(degree: userInput)
            } else if from == K.degree && to == K.radian {
                return degreeToRadian(degree: userInput)
            } else if from == K.degree && to == K.secondOfArc {
                return degreeToSecondofArc(degree: userInput)
            } else if from == K.gradian && to == K.degree {
                return gradianToDegree(gradian: userInput)
            } else if from == K.gradian && to == K.milliradian {
                return gradianToMilliradian(gradian: userInput)
            } else if from == K.gradian && to == K.minuteOfArc {
                return gradianToMinuteofArc(gradian: userInput)
            } else if from == K.gradian && to == K.radian {
                return gradianToRadian(gradian: userInput)
            } else if from == K.gradian && to == K.secondOfArc {
                return gradianToSecondofArc(gradian: userInput)
            } else if from == K.milliradian && to == K.degree {
                return milliradianToDegree(milliradian: userInput)
            } else if from == K.milliradian && to == K.gradian {
                return milliradianToGradian(milliradian: userInput)
            } else if from == K.milliradian && to == K.minuteOfArc {
                return milliradianToMinuteofArc(milliradian: userInput)
            } else if from == K.milliradian && to == K.radian {
                return milliradianToRadian(milliradian: userInput)
            } else if from == K.milliradian && to == K.secondOfArc {
                return milliradianToSecondofArc(milliradian: userInput)
            }
            // MARK: - Volume Convert
        case "Volume":
            if from == K.cubicMeter && to == K.cubicKilometer {
                return cubicMeterToCubicKilometer(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.cubicCentimeter {
                return cubicMeterToCubicCentimeter(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.cubicMillimeter {
                return cubicMeterToCubicMillimeter(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.liter {
                return cubicMeterToLiter(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.milliliter {
                return cubicMeterToMilliliter(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.usGallon {
                return cubicMeterToUsGallon(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.usQuart {
                return cubicMeterToUsQuart(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.usPint {
                return cubicMeterToUsPint(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.usCup {
                return cubicMeterToUsCup(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.usFluidOunce {
                return cubicMeterToUsFluidOunce(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.usTableSpoon {
                return cubicMeterToUsTableSpoon(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.usTeaSpoon {
                return cubicMeterToUsTeaSpoon(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.imperialGallon {
                return cubicMeterToImperialGallon(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.imperialQuart {
                return cubicMeterToImperialQuart(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.imperialPint {
                return cubicMeterToImperialPint(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.imperialFluidOunce {
                return cubicMeterToImperialFluidOunce(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.imperialTableSpoon {
                return cubicMeterToImperialTableSpoon(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.imperialTeaSpoon {
                return cubicMeterToImperialTeaSpoon(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.cubicMile {
                return cubicMeterToCubicMile(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.cubicYard {
                return cubicMeterToCubicYard(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.cubicFoot {
                return cubicMeterToCubicFoot(cubicMeter: userInput)
            } else if from == K.cubicMeter && to == K.cubicInch {
                return cubicMeterToCubicInch(cubicMeter: userInput)
            } else if from == K.cubicKilometer && to == K.cubicMeter {
                return cubicKilometerToCubicMeter(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.cubicCentimeter {
                return cubicKilometerToCubicCentimeter(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.cubicMillimeter {
                return cubicKilometerToCubicMillimeter(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.liter {
                return cubicKilometerToLiter(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.milliliter {
                return cubicKilometerToMilliliter(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.usGallon {
                return cubicKilometerToUsGallon(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.usQuart {
                return cubicKilometerToUsQuart(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.usPint {
                return cubicKilometerToUsPint(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.usCup {
                return cubicKilometerToUsCup(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.usFluidOunce {
                return cubicKilometerToUsFluidOunce(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.usTableSpoon {
                return cubicKilometerToUsTableSpoon(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.usTeaSpoon {
                return cubicKilometerToUsTeaSpoon(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.imperialGallon {
                return cubicKilometerToImperialGallon(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.imperialQuart {
                return cubicKilometerToImperialQuart(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.imperialPint {
                return cubicKilometerToImperialPint(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.imperialFluidOunce {
                return cubicKilometerToImperialFluidOunce(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.imperialTableSpoon {
                return cubicKilometerToImperialTableSpoon(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.imperialTeaSpoon {
                return cubicKilometerToImperialTeaSpoon(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.cubicMile {
                return cubicKilometerToCubicMile(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.cubicYard {
                return cubicKilometerToCubicYard(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.cubicFoot {
                return cubicKilometerToCubicFoot(cubicKilometer: userInput)
            } else if from == K.cubicKilometer && to == K.cubicInch {
                return cubicKilometerToCubicInch(cubicKilometer: userInput)
            } else if from == K.liter && to == K.cubicMeter {
                return literToCubicMeter(liter: userInput)
            } else if from == K.liter && to == K.cubicKilometer {
                return literToCubicKilometer(liter: userInput)
            } else if from == K.liter && to == K.cubicCentimeter {
                return literToCubicCentimeter(liter: userInput)
            } else if from == K.liter && to == K.cubicMillimeter {
                return literToCubicMillimeter(liter: userInput)
            } else if from == K.liter && to == K.milliliter {
                return literToMilliliter(liter: userInput)
            } else if from == K.liter && to == K.usGallon {
                return literToUsGallon(liter: userInput)
            } else if from == K.liter && to == K.usQuart {
                return literToUsQuart(liter: userInput)
            } else if from == K.liter && to == K.usPint {
                return literToUsPint(liter: userInput)
            } else if from == K.liter && to == K.usCup {
                return literToUsCup(liter: userInput)
            } else if from == K.liter && to == K.usFluidOunce {
                return literToUsFluidOunce(liter: userInput)
            } else if from == K.liter && to == K.usTableSpoon {
                return literToUsTableSpoon(liter: userInput)
            } else if from == K.liter && to == K.usTeaSpoon {
                return literToUsTeaSpoon(liter: userInput)
            } else if from == K.liter && to == K.imperialGallon {
                return literToImperialGallon(liter: userInput)
            } else if from == K.liter && to == K.imperialQuart {
                return literToImperialQuart(liter: userInput)
            } else if from == K.liter && to == K.imperialPint {
                return literToImperialPint(liter: userInput)
            } else if from == K.liter && to == K.imperialFluidOunce {
                return literToImperialFluidOunce(liter: userInput)
            } else if from == K.liter && to == K.imperialTableSpoon {
                return literToImperialTableSpoon(liter: userInput)
            } else if from == K.liter && to == K.imperialTeaSpoon {
                return literToImperialTeaSpoon(liter: userInput)
            } else if from == K.liter && to == K.cubicMile {
                return literToCubicMile(liter: userInput)
            } else if from == K.liter && to == K.cubicYard {
                return literToCubicYard(liter: userInput)
            } else if from == K.liter && to == K.cubicFoot {
                return literToCubicFoot(liter: userInput)
            } else if from == K.liter && to == K.cubicInch {
                return literToCubicInch(liter: userInput)
            } else if from == K.cubicCentimeter && to == K.cubicMeter {
                return cubicCentimeterToCubicMeter(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.cubicKilometer {
                return cubicCentimeterToCubicKilometer(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.cubicMillimeter {
                return cubicCentimeterToCubicMillimeter(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.liter {
                return cubicCentimeterToLiter(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.milliliter {
                return cubicCentimeterToMilliliter(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.usGallon {
                return cubicCentimeterToUsGallon(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.usQuart {
                return cubicCentimeterToUsQuart(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.usPint {
                return cubicCentimeterToUsPint(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.usCup {
                return cubicCentimeterToUsCup(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.usFluidOunce {
                return cubicCentimeterToUsFluidOunce(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.usTableSpoon {
                return cubicCentimeterToUsTableSpoon(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.usTeaSpoon {
                return cubicCentimeterToUsTeaSpoon(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.imperialGallon {
                return cubicCentimeterToImperialGallon(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.imperialQuart {
                return cubicCentimeterToImperialQuart(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.imperialPint {
                return cubicCentimeterToImperialPint(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.imperialFluidOunce {
                return cubicCentimeterToImperialFluidOunce(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.imperialTableSpoon {
                return cubicCentimeterToImperialTableSpoon(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.imperialTeaSpoon {
                return cubicCentimeterToImperialTeaSpoon(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.cubicMile {
                return cubicCentimeterToCubicMile(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.cubicYard {
                return cubicCentimeterToCubicYard(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.cubicFoot {
                return cubicCentimeterToCubicFoot(cubicCentimeter: userInput)
            } else if from == K.cubicCentimeter && to == K.cubicInch {
                return cubicCentimeterToCubicInch(cubicCentimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.cubicMeter {
                return cubicMillimeterToCubicMeter(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.cubicKilometer {
                return cubicMillimeterToCubicKilometer(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.cubicCentimeter {
                return cubicMillimeterToCubicCentimeter(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.liter {
                return cubicMillimeterToLiter(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.milliliter {
                return cubicMillimeterToMilliliter(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.usGallon {
                return cubicMillimeterToUsGallon(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.usQuart {
                return cubicMillimeterToUsQuart(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.usPint {
                return cubicMillimeterToUsPint(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.usCup {
                return cubicMillimeterToUsCup(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.usFluidOunce {
                return cubicMillimeterToUsFluidOunce(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.usTableSpoon {
                return cubicMillimeterToUsTableSpoon(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.usTeaSpoon {
                return cubicMillimeterToUsTeaSpoon(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.imperialGallon {
                return cubicMillimeterToImperialGallon(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.imperialQuart {
                return cubicMillimeterToImperialQuart(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.imperialPint {
                return cubicMillimeterToImperialPint(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.imperialFluidOunce {
                return cubicMillimeterToImperialFluidOunce(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.imperialTableSpoon {
                return cubicMillimeterToImperialTableSpoon(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.imperialTeaSpoon {
                return cubicMillimeterToImperialTeaSpoon(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.cubicMile {
                return cubicMillimeterToCubicMile(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.cubicYard {
                return cubicMillimeterToCubicYard(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.cubicFoot {
                return cubicMillimeterToCubicFoot(cubicMillimeter: userInput)
            } else if from == K.cubicMillimeter && to == K.cubicInch {
                return cubicMillimeterToCubicInch(cubicMillimeter: userInput)
            } else if from == K.milliliter && to == K.cubicMeter {
                return milliliterToCubicMeter(milliliter: userInput)
            } else if from == K.milliliter && to == K.cubicKilometer {
                return milliliterToCubicKilometer(milliliter: userInput)
            } else if from == K.milliliter && to == K.cubicMillimeter {
                return milliliterToCubicMillimeter(milliliter: userInput)
            } else if from == K.milliliter && to == K.liter {
                return milliliterToLiter(milliliter: userInput)
            } else if from == K.milliliter && to == K.usGallon {
                return milliliterToUsGallon(milliliter: userInput)
            } else if from == K.milliliter && to == K.usQuart {
                return milliliterToUsQuart(milliliter: userInput)
            } else if from == K.milliliter && to == K.usPint {
                return milliliterToUsPint(milliliter: userInput)
            } else if from == K.milliliter && to == K.usCup {
                return milliliterToUsCup(milliliter: userInput)
            } else if from == K.milliliter && to == K.usFluidOunce {
                return milliliterToUsFluidOunce(milliliter: userInput)
            } else if from == K.milliliter && to == K.usTableSpoon {
                return milliliterToUsTableSpoon(milliliter: userInput)
            } else if from == K.milliliter && to == K.usTeaSpoon {
                return milliliterToUsTeaSpoon(milliliter: userInput)
            } else if from == K.milliliter && to == K.imperialGallon {
                return milliliterToImperialGallon(milliliter: userInput)
            } else if from == K.milliliter && to == K.imperialQuart {
                return milliliterToImperialQuart(milliliter: userInput)
            } else if from == K.milliliter && to == K.imperialPint {
                return milliliterToImperialPint(milliliter: userInput)
            } else if from == K.milliliter && to == K.imperialFluidOunce {
                return milliliterToImperialFluidOunce(milliliter: userInput)
            } else if from == K.milliliter && to == K.imperialTableSpoon {
                return milliliterToImperialTableSpoon(milliliter: userInput)
            } else if from == K.milliliter && to == K.imperialTeaSpoon {
                return milliliterToImperialTeaSpoon(milliliter: userInput)
            } else if from == K.milliliter && to == K.cubicMile {
                return milliliterToCubicMile(milliliter: userInput)
            } else if from == K.milliliter && to == K.cubicYard {
                return milliliterToCubicYard(milliliter: userInput)
            } else if from == K.milliliter && to == K.cubicFoot {
                return milliliterToCubicFoot(milliliter: userInput)
            } else if from == K.milliliter && to == K.cubicInch {
                return milliliterToCubicInch(milliliter: userInput)
            } else if from == K.usGallon && to == K.cubicMeter {
                return usGallonToCubicMeter(usGallon: userInput)
            } else if from == K.usGallon && to == K.cubicKilometer {
                return usGallonToCubicKilometer(usGallon: userInput)
            } else if from == K.usGallon && to == K.cubicCentimeter {
                return usGallonToCubicCentimeter(usGallon: userInput)
            } else if from == K.usGallon && to == K.cubicMillimeter {
                return usGallonToCubicMillimeter(usGallon: userInput)
            } else if from == K.usGallon && to == K.liter {
                return usGallonToLiter(usGallon: userInput)
            } else if from == K.usGallon && to == K.milliliter {
                return usGallonToMilliliter(usGallon: userInput)
            } else if from == K.usGallon && to == K.usQuart {
                return usGallonToUsQuart(usGallon: userInput)
            } else if from == K.usGallon && to == K.usPint {
                return usGallonToUsPint(usGallon: userInput)
            } else if from == K.usGallon && to == K.usCup {
                return usGallonToUsCup(usGallon: userInput)
            } else if from == K.usGallon && to == K.usFluidOunce {
                return usGallonToUsFluidOunce(usGallon: userInput)
            } else if from == K.usGallon && to == K.usTableSpoon {
                return usGallonToUsTableSpoon(usGallon: userInput)
            } else if from == K.usGallon && to == K.usTeaSpoon {
                return usGallonToUsTeaSpoon(usGallon: userInput)
            } else if from == K.usGallon && to == K.imperialGallon {
                return usGallonToImperialGallon(usGallon: userInput)
            } else if from == K.usGallon && to == K.imperialQuart {
                return usGallonToImperialQuart(usGallon: userInput)
            } else if from == K.usGallon && to == K.imperialPint {
                return usGallonToImperialPint(usGallon: userInput)
            } else if from == K.usGallon && to == K.imperialFluidOunce {
                return usGallonToImperialFluidOunce(usGallon: userInput)
            } else if from == K.usGallon && to == K.imperialTableSpoon {
                return usGallonToImperialTableSpoon(usGallon: userInput)
            } else if from == K.usGallon && to == K.imperialTeaSpoon {
                return usGallonToImperialTeaSpoon(usGallon: userInput)
            } else if from == K.usGallon && to == K.cubicMile {
                return usGallonToCubicMile(usGallon: userInput)
            } else if from == K.usGallon && to == K.cubicYard {
                return usGallonToCubicYard(usGallon: userInput)
            } else if from == K.usGallon && to == K.cubicFoot {
                return usGallonToCubicFoot(usGallon: userInput)
            } else if from == K.usGallon && to == K.cubicInch {
                return usGallonToCubicInch(usGallon: userInput)
            } else if from == K.usQuart && to == K.cubicMeter {
                return usQuartToCubicMeter(usQuart: userInput)
            } else if from == K.usQuart && to == K.cubicKilometer {
                return usQuartToCubicKilometer(usQuart: userInput)
            } else if from == K.usQuart && to == K.cubicCentimeter {
                return usQuartToCubicCentimeter(usQuart: userInput)
            } else if from == K.usQuart && to == K.cubicMillimeter {
                return usQuartToCubicMillimeter(usQuart: userInput)
            } else if from == K.usQuart && to == K.liter {
                return usQuartToLiter(usQuart: userInput)
            } else if from == K.usQuart && to == K.milliliter {
                return usQuartToMilliliter(usQuart: userInput)
            } else if from == K.usQuart && to == K.usGallon {
                return usQuartToUsGallon(usQuart: userInput)
            } else if from == K.usQuart && to == K.usPint {
                return usQuartToUsPint(usQuart: userInput)
            } else if from == K.usQuart && to == K.usCup {
                return usQuartToUsCup(usQuart: userInput)
            } else if from == K.usQuart && to == K.usFluidOunce {
                return usQuartToUsFluidOunce(usQuart: userInput)
            } else if from == K.usQuart && to == K.usTableSpoon {
                return usQuartToUsTableSpoon(usQuart: userInput)
            } else if from == K.usQuart && to == K.usTeaSpoon {
                return usQuartToUsTeaSpoon(usQuart: userInput)
            } else if from == K.usQuart && to == K.imperialGallon {
                return usQuartToImperialGallon(usQuart: userInput)
            } else if from == K.usQuart && to == K.imperialQuart {
                return usQuartToImperialQuart(usQuart: userInput)
            } else if from == K.usQuart && to == K.imperialPint {
                return usQuartToImperialPint(usQuart: userInput)
            } else if from == K.usQuart && to == K.imperialFluidOunce {
                return usQuartToImperialFluidOunce(usQuart: userInput)
            } else if from == K.usQuart && to == K.imperialTableSpoon {
                return usQuartToImperialTableSpoon(usQuart: userInput)
            } else if from == K.usQuart && to == K.imperialTeaSpoon {
                return usQuartToImperialTeaSpoon(usQuart: userInput)
            } else if from == K.usQuart && to == K.cubicMile {
                return usQuartToCubicMile(usQuart: userInput)
            } else if from == K.usQuart && to == K.cubicYard {
                return usQuartToCubicYard(usQuart: userInput)
            } else if from == K.usQuart && to == K.cubicFoot {
                return usQuartToCubicFoot(usQuart: userInput)
            } else if from == K.usQuart && to == K.cubicInch {
                return usQuartToCubicInch(usQuart: userInput)
            } else if from == K.usPint && to == K.cubicMeter {
                return usPintToCubicMeter(usPint: userInput)
            } else if from == K.usPint && to == K.cubicKilometer {
                return usPintToCubicKilometer(usPint: userInput)
            } else if from == K.usPint && to == K.cubicCentimeter {
                return usPintToCubicCentimeter(usPint: userInput)
            } else if from == K.usPint && to == K.cubicMillimeter {
                return usPintToCubicMillimeter(usPint: userInput)
            } else if from == K.usPint && to == K.liter {
                return usPintToLiter(usPint: userInput)
            } else if from == K.usPint && to == K.milliliter {
                return usPintToMilliliter(usPint: userInput)
            } else if from == K.usPint && to == K.usGallon {
                return usPintToUsGallon(usPint: userInput)
            } else if from == K.usPint && to == K.usQuart {
                return usPintToUsQuart(usPint: userInput)
            } else if from == K.usPint && to == K.usCup {
                return usPintToUsCup(usPint: userInput)
            } else if from == K.usPint && to == K.usFluidOunce {
                return usPintToUsFluidOunce(usPint: userInput)
            } else if from == K.usPint && to == K.usTableSpoon {
                return usPintToUsTableSpoon(usPint: userInput)
            } else if from == K.usPint && to == K.usTeaSpoon {
                return usPintToUsTeaSpoon(usPint: userInput)
            } else if from == K.usPint && to == K.imperialGallon {
                return usPintToImperialGallon(usPint: userInput)
            } else if from == K.usPint && to == K.imperialQuart {
                return usPintToImperialQuart(usPint: userInput)
            } else if from == K.usPint && to == K.imperialPint {
                return usPintToImperialPint(usPint: userInput)
            } else if from == K.usPint && to == K.imperialFluidOunce {
                return usPintToImperialFluidOunce(usPint: userInput)
            } else if from == K.usPint && to == K.imperialTableSpoon {
                return usPintToImperialTableSpoon(usPint: userInput)
            } else if from == K.usPint && to == K.imperialTeaSpoon {
                return usPintToImperialTeaSpoon(usPint: userInput)
            } else if from == K.usPint && to == K.cubicMile {
                return usPintToCubicMile(usPint: userInput)
            } else if from == K.usPint && to == K.cubicYard {
                return usPintToCubicYard(usPint: userInput)
            } else if from == K.usPint && to == K.cubicFoot {
                return usPintToCubicFoot(usPint: userInput)
            } else if from == K.usPint && to == K.cubicInch {
                return usPintToCubicInch(usPint: userInput)
            } else if from == K.usCup && to == K.cubicMeter {
                return usCupToCubicMeter(usCup: userInput)
            } else if from == K.usCup && to == K.cubicKilometer {
                return usCupToCubicKilometer(usCup: userInput)
            } else if from == K.usCup && to == K.cubicCentimeter {
                return usCupToCubicCentimeter(usCup: userInput)
            } else if from == K.usCup && to == K.cubicMillimeter {
                return usCupToCubicMillimeter(usCup: userInput)
            } else if from == K.usCup && to == K.liter {
                return usCupToLiter(usCup: userInput)
            } else if from == K.usCup && to == K.milliliter {
                return usCupToMilliliter(usCup: userInput)
            } else if from == K.usCup && to == K.usGallon {
                return usCupToUsGallon(usCup: userInput)
            } else if from == K.usCup && to == K.usQuart {
                return usCupToUsQuart(usCup: userInput)
            } else if from == K.usCup && to == K.usPint {
                return usCupToUsPint(usCup: userInput)
            } else if from == K.usCup && to == K.usFluidOunce {
                return usCupToUsFluidOunce(usCup: userInput)
            } else if from == K.usCup && to == K.usTableSpoon {
                return usCupToUsTableSpoon(usCup: userInput)
            } else if from == K.usCup && to == K.usTeaSpoon {
                return usCupToUsTeaSpoon(usCup: userInput)
            } else if from == K.usCup && to == K.imperialGallon {
                return usCupToImperialGallon(usCup: userInput)
            } else if from == K.usCup && to == K.imperialQuart {
                return usCupToImperialQuart(usCup: userInput)
            } else if from == K.usCup && to == K.imperialPint {
                return usCupToImperialPint(usCup: userInput)
            } else if from == K.usCup && to == K.imperialFluidOunce {
                return usCupToImperialFluidOunce(usCup: userInput)
            } else if from == K.usCup && to == K.imperialTableSpoon {
                return usCupToImperialTableSpoon(usCup: userInput)
            } else if from == K.usCup && to == K.imperialTeaSpoon {
                return usCupToImperialTeaSpoon(usCup: userInput)
            } else if from == K.usCup && to == K.cubicMile {
                return usCupToCubicMile(usCup: userInput)
            } else if from == K.usCup && to == K.cubicYard {
                return usCupToCubicYard(usCup: userInput)
            } else if from == K.usCup && to == K.cubicFoot {
                return usCupToCubicFoot(usCup: userInput)
            } else if from == K.usCup && to == K.cubicInch {
                return usCupToCubicInch(usCup: userInput)
            } else if from == K.usFluidOunce && to == K.cubicMeter {
                return usFluidOunceToCubicMeter(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.cubicKilometer {
                return usFluidOunceToCubicKilometer(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.cubicCentimeter {
                return usFluidOunceToCubicCentimeter(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.cubicMillimeter {
                return usFluidOunceToCubicMillimeter(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.liter {
                return usFluidOunceToLiter(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.milliliter {
                return usFluidOunceToMilliliter(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.usGallon {
                return usFluidOunceToUsGallon(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.usQuart {
                return usFluidOunceToUsQuart(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.usPint {
                return usFluidOunceToUsPint(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.usCup {
                return usFluidOunceToUsCup(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.usTableSpoon {
                return usFluidOunceToUsTableSpoon(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.usTeaSpoon {
                return usFluidOunceToUsTeaSpoon(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.imperialGallon {
                return usFluidOunceToImperialGallon(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.imperialQuart {
                return usFluidOunceToImperialQuart(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.imperialPint {
                return usFluidOunceToImperialPint(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.imperialFluidOunce {
                return usFluidOunceToImperialFluidOunce(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.imperialPint {
                return usFluidOunceToImperialPint(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.imperialFluidOunce {
                return usFluidOunceToImperialFluidOunce(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.imperialTableSpoon {
                return usFluidOunceToImperialTableSpoon(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.imperialTeaSpoon {
                return usFluidOunceToImperialTeaSpoon(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.cubicMile {
                return usFluidOunceToCubicMile(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.cubicYard {
                return usFluidOunceToCubicYard(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.cubicFoot {
                return usFluidOunceToCubicFoot(usFluidOunce: userInput)
            } else if from == K.usFluidOunce && to == K.cubicInch {
                return usFluidOunceToCubicFoot(usFluidOunce: userInput)
            } else if from == K.usTableSpoon && to == K.cubicMeter {
                return usTableSpoonToCubicMeter(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.cubicKilometer {
                return usTableSpoonToCubicKilometer(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.cubicCentimeter {
                return usTableSpoonToCubicCentimeter(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.cubicMillimeter {
                return usTableSpoonToCubicMillimeter(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.liter {
                return usTableSpoonToLiter(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.milliliter {
                return usTableSpoonToMilliliter(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.usGallon {
                return usTableSpoonToUsGallon(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.usQuart {
                return usTableSpoonToUsQuart(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.usPint {
                return usTableSpoonToUsPint(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.usCup {
                return usTableSpoonToUsCup(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.usFluidOunce {
                return usTableSpoonToUsFluidOunce(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.usTeaSpoon {
                return usTableSpoonToUsTeaSpoon(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.imperialGallon {
                return usTableSpoonToImperialGallon(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.imperialQuart {
                return usTableSpoonToImperialQuart(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.imperialPint {
                return usTableSpoonToImperialPint(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.imperialFluidOunce {
                return usTableSpoonToImperialFluidOunce(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.imperialTableSpoon {
                return usTableSpoonToImperialTableSpoon(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.imperialTeaSpoon {
                return usTableSpoonToImperialTeaSpoon(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.cubicMile {
                return usTableSpoonToCubicMile(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.cubicYard {
                return usTableSpoonToCubicYard(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.cubicFoot {
                return usTableSpoonToCubicFoot(usTableSpoon: userInput)
            } else if from == K.usTableSpoon && to == K.cubicInch {
                return usTableSpoonToCubicInch(usTableSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.cubicMeter {
                return usTeaSpoonToCubicMeter(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.cubicKilometer {
                return usTeaSpoonToCubicKilometer(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.cubicCentimeter {
                return usTeaSpoonToCubicCentimeter(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.cubicMillimeter {
                return usTeaSpoonToCubicMillimeter(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.liter {
                return usTeaSpoonToLiter(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.milliliter {
                return usTeaSpoonToMilliliter(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.usGallon {
                return usTeaSpoonToUsGallon(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.usQuart {
                return usTeaSpoonToUsQuart(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.usPint {
                return usTeaSpoonToUsPint(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.usCup {
                return usTeaSpoonToUsCup(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.usFluidOunce {
                return usTeaSpoonToUsFluidOunce(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.usTableSpoon {
                return usTeaSpoonToUsTableSpoon(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.imperialGallon {
                return usTeaSpoonToImperialGallon(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.imperialQuart {
                return usTeaSpoonToImperialQuart(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.imperialPint {
                return usTeaSpoonToImperialPint(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.imperialFluidOunce {
                return usTeaSpoonToImperialFluidOunce(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.imperialTableSpoon {
                return usTeaSpoonToImperialTableSpoon(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.imperialTeaSpoon {
                return usTeaSpoonToImperialTeaSpoon(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.cubicMile {
                return usTeaSpoonToCubicMile(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.cubicYard {
                return usTeaSpoonToCubicYard(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.cubicFoot {
                return usTeaSpoonToCubicFoot(usTeaSpoon: userInput)
            } else if from == K.usTeaSpoon && to == K.cubicInch {
                return usTeaSpoonToCubicInch(usTeaSpoon: userInput)
            } else if from == K.imperialGallon && to == K.cubicMeter {
                return imperialGallonToCubicMeter(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.cubicKilometer {
                return imperialGallonToCubicKilometer(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.cubicCentimeter {
                return imperialGallonToCubicCentimeter(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.cubicMillimeter {
                return imperialGallonToCubicMillimeter(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.liter {
                return imperialGallonToLiter(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.milliliter {
                return imperialGallonToMilliliter(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.usGallon {
                return imperialGallonToUsGallon(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.usQuart {
                return imperialGallonToUsQuart(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.usPint {
                return imperialGallonToUsPint(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.usCup {
                return imperialGallonToUsCup(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.usFluidOunce {
                return imperialGallonToUsFluidOunce(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.usTableSpoon {
                return imperialGallonToUsTableSpoon(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.usTeaSpoon {
                return imperialGallonToUsTeaSpoon(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.imperialQuart {
                return imperialGallonToImperialQuart(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.imperialPint {
                return imperialGallonToImperialPint(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.imperialFluidOunce {
                return imperialGallonToImperialFluidOunce(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.imperialTableSpoon {
                return imperialGallonToImperialTableSpoon(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.imperialTeaSpoon {
                return imperialGallonToImperialTeaSpoon(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.cubicMile {
                return imperialGallonToCubicMile(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.cubicYard {
                return imperialGallonToCubicYard(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.cubicFoot {
                return imperialGallonToCubicFoot(imperialGallon: userInput)
            } else if from == K.imperialGallon && to == K.cubicInch {
                return imperialGallonToCubicInch(imperialGallon: userInput)
            } else if from == K.imperialQuart && to == K.cubicMeter {
                return imperialQuartToCubicMeter(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.cubicKilometer {
                return imperialQuartToCubicKilometer(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.cubicCentimeter {
                return imperialQuartToCubicCentimeter(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.cubicMillimeter {
                return imperialQuartToCubicMillimeter(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.liter {
                return imperialQuartToLiter(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.milliliter {
                return imperialQuartToMilliliter(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.usGallon {
                return imperialQuartToUsGallon(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.usQuart {
                return imperialQuartToUsQuart(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.usPint {
                return imperialQuartToUsPint(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.usCup {
                return imperialQuartToUsCup(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.usFluidOunce {
                return imperialQuartToUsFluidOunce(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.usTableSpoon {
                return imperialQuartToUsTableSpoon(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.usTeaSpoon {
                return imperialQuartToUsTeaSpoon(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.imperialGallon {
                return imperialQuartToImperialGallon(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.imperialPint {
                return imperialQuartToImperialPint(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.imperialFluidOunce {
                return imperialQuartToImperialFluidOunce(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.imperialTableSpoon {
                return imperialQuartToImperialTableSpoon(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.imperialTeaSpoon {
                return imperialQuartToImperialTeaSpoon(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.cubicMile {
                return imperialQuartToCubicMile(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.cubicYard {
                return imperialQuartToCubicYard(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.cubicFoot {
                return imperialQuartToCubicFoot(imperialQuart: userInput)
            } else if from == K.imperialQuart && to == K.cubicInch {
                return imperialQuartToCubicInch(imperialQuart: userInput)
            } else if from == K.imperialPint && to == K.cubicMeter {
                return imperialPintToCubicMeter(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.cubicKilometer {
                return imperialPintToCubicKilometer(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.cubicCentimeter {
                return imperialPintToCubicCentimeter(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.cubicMillimeter {
                return imperialPintToCubicMillimeter(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.liter {
                return imperialPintToLiter(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.milliliter {
                return imperialPintToMilliliter(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.usGallon {
                return imperialPintToUsGallon(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.usQuart {
                return imperialPintToUsQuart(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.usPint {
                return imperialPintToUsPint(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.usCup {
                return imperialPintToUsCup(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.usFluidOunce {
                return imperialPintToUsFluidOunce(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.usTableSpoon {
                return imperialPintToUsTableSpoon(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.usTeaSpoon {
                return imperialPintToUsTeaSpoon(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.imperialGallon {
                return imperialPintToImperialGallon(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.imperialQuart {
                return imperialPintToImperialQuart(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.imperialFluidOunce {
                return imperialPintToImperialFluidOunce(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.imperialTableSpoon {
                return imperialPintToImperialTableSpoon(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.imperialTeaSpoon {
                return imperialPintToImperialTeaSpoon(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.cubicMile {
                return imperialPintToCubicMile(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.cubicYard {
                return imperialPintToCubicYard(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.cubicFoot {
                return imperialPintToCubicFoot(imperialPint: userInput)
            } else if from == K.imperialPint && to == K.cubicInch {
                return imperialPintToCubicInch(imperialPint: userInput)
            } else if from == K.imperialFluidOunce && to == K.cubicMeter {
                return imperialFluidOunceToCubicMeter(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.cubicKilometer {
                return imperialFluidOunceToCubicKilometer(imperialFluidOunce: userInput)
            } else if from == K.imperialPint && to == K.cubicCentimeter {
                return imperialPintToCubicCentimeter(imperialPint: userInput)
            } else if from == K.imperialFluidOunce && to == K.cubicMillimeter {
                return imperialFluidOunceToCubicMillimeter(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.liter {
                return imperialFluidOunceToLiter(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.milliliter {
                return imperialFluidOunceToMilliliter(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.usGallon {
                return imperialFluidOunceToUsGallon(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.usQuart {
                return imperialFluidOunceToUsQuart(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.usPint {
                return imperialFluidOunceToUsPint(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.usCup {
                return imperialFluidOunceToUsCup(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.usFluidOunce {
                return imperialFluidOunceToUsFluidOunce(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.usTableSpoon {
                return imperialFluidOunceToUsTableSpoon(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.usTeaSpoon {
                return imperialFluidOunceToUsTeaSpoon(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.imperialGallon {
                return imperialFluidOunceToImperialGallon(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.imperialQuart {
                return imperialFluidOunceToImperialQuart(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.imperialPint {
                return imperialFluidOunceToImperialPint(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.imperialTableSpoon {
                return imperialFluidOunceToImperialTableSpoon(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.imperialTeaSpoon {
                return imperialFluidOunceToImperialTeaspoon(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.cubicMile {
                return imperialFluidOunceToCubicMile(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.cubicYard {
                return imperialFluidOunceToCubicYard(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.cubicFoot {
                return imperialFluidOunceToCubicFoot(imperialFluidOunce: userInput)
            } else if from == K.imperialFluidOunce && to == K.cubicInch {
                return imperialFluidOunceToCubicInch(imperialFluidOunce: userInput)
            } else if from == K.imperialTableSpoon && to == K.cubicMeter {
                return imperialTableSpoonToCubicMeter(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.cubicKilometer {
                return imperialTableSpoonToCubicKilometer(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.cubicCentimeter {
                return imperialTableSpoonToCubicCentimeter(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.cubicMillimeter {
                return imperialTableSpoonToCubicMillimeter(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.liter {
                return imperialTableSpoonToLiter(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.milliliter {
                return imperialTableSpoonToMilliliter(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.usGallon {
                return imperialTableSpoonToUsGallon(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.usQuart {
                return imperialTableSpoonToUsQuart(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.usPint {
                return imperialTableSpoonToUsPint(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.usCup {
                return imperialTableSpoonToUsCup(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.usFluidOunce {
                return imperialTableSpoonToUsFluidOunce(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.usTableSpoon {
                return imperialTableSpoonToUsTableSpoon(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.usTeaSpoon {
                return imperialTableSpoonToUsTeaSpoon(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.imperialGallon {
                return imperialTableSpoonToImperialGallon(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.imperialQuart {
                return imperialTableSpoonToImperialGallon(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.imperialPint {
                return imperialTableSpoonToImperialPint(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.imperialFluidOunce {
                return imperialTableSpoonToImperialFluidOunce(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.imperialTeaSpoon {
                return imperialTableSpoonToImperialTeaSpoon(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.cubicMile {
                return imperialTableSpoonToCubicYard(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.cubicYard {
                return imperialTableSpoonToCubicYard(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.cubicFoot {
                return imperialTableSpoonToCubicFoot(imperialTableSpoon: userInput)
            } else if from == K.imperialTableSpoon && to == K.cubicInch {
                return imperialTableSpoonToCubicInch(imperialTableSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.cubicMeter {
                return imperialTeaSpoonToCubicMeter(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.cubicKilometer {
                return imperialTeaSpoonToCubicKilometer(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.cubicCentimeter {
                return imperialTeaSpoonToCubicCentimeter(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.cubicMillimeter {
                return imperialTeaSpoonToCubicMillimeter(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.liter {
                return imperialTeaSpoonToLiter(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.milliliter {
                return imperialTeaSpoonToMilliliter(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.usGallon {
                return imperialTeaSpoonToUsGallon(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.usQuart {
                return imperialTeaSpoonToUsQuart(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.usPint {
                return imperialTeaSpoonToUsPint(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.usCup {
                return imperialTeaSpoonToUsCup(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.usFluidOunce {
                return imperialTeaSpoonToUsFluidOunce(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.usTableSpoon {
                return imperialTeaSpoonToUsTableSpoon(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.usTeaSpoon {
                return imperialTeaSpoonToUsTeaSpoon(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.imperialGallon {
                return imperialTeaSpoonToImperialGallon(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.imperialQuart {
                return imperialTeaSpoonToImperialQuart(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.imperialPint {
                return imperialTeaSpoonToImperialPint(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.imperialFluidOunce {
                return imperialTeaSpoonToImperialFluidOunce(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.imperialTableSpoon {
                return imperialTeaSpoonToImperialTableSpoon(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.cubicMile {
                return imperialTeaSpoonToCubicMile(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.cubicYard {
                return imperialTeaSpoonToCubicYard(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.cubicFoot {
                return imperialTeaSpoonToCubicFoot(imperialTeaSpoon: userInput)
            } else if from == K.imperialTeaSpoon && to == K.cubicInch {
                return imperialTeaSpoonToCubicInch(imperialTeaSpoon: userInput)
            } else if from == K.cubicMile && to == K.cubicMeter {
                return cubicMileToCubicMeter(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.cubicKilometer {
                return cubicMileToCubicKilometer(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.cubicCentimeter {
                return cubicMileToCubicCentimeter(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.cubicMillimeter {
                return cubicMileToCubicMillimeter(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.liter {
                return cubicMileToLiter(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.milliliter {
                return cubicMileToMilliliter(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.usGallon {
                return cubicMileToUsGallon(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.usQuart {
                return cubicMileToUsQuart(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.usPint {
                return cubicMileToUsPint(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.usCup {
                return cubicMileToUsCup(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.usFluidOunce {
                return cubicMileToUsFluidOunce(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.usTableSpoon {
                return cubicMileToUsTableSpoon(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.usTeaSpoon {
                return cubicMileToUsTeaSpoon(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.imperialGallon {
                return cubicMileToImperialGallon(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.imperialQuart {
                return cubicMileToImperialQuart(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.imperialPint {
                return cubicMileToImperialPint(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.imperialFluidOunce {
                return cubicMileToImperialFluidOunce(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.imperialTableSpoon {
                return cubicMileToImperialTableSpoon(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.imperialTeaSpoon {
                return cubicMileToImperialTeaSpoon(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.cubicYard {
                return cubicMileToCubicYard(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.cubicFoot {
                return cubicMileToCubicFoot(cubicMile: userInput)
            } else if from == K.cubicMile && to == K.cubicInch {
                return cubicMileToCubicInch(cubicMile: userInput)
            } else if from == K.cubicYard && to == K.cubicMeter {
                return cubicYardToCubicMeter(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.cubicKilometer {
                return cubicYardToCubicKilometer(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.cubicCentimeter {
                return cubicYardToCubicCentimeter(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.cubicMillimeter {
                return cubicYardToCubicMillimeter(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.liter {
                return cubicYardToLiter(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.milliliter {
                return cubicYardToMilliliter(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.usGallon {
                return cubicYardToUsGallon(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.usQuart {
                return cubicYardToUsQuart(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.usPint {
                return cubicYardToUsPint(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.usCup {
                return cubicYardToUsCup(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.usFluidOunce {
                return cubicYardToUsFluidOunce(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.usTableSpoon {
                return cubicYardToUsTableSpoon(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.usTeaSpoon {
                return cubicYardToUsTeaSpoon(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.imperialGallon {
                return cubicYardToImperialGallon(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.imperialPint {
                return cubicYardToImperialPint(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.imperialFluidOunce {
                return cubicYardToImperialFluidOunce(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.imperialTableSpoon {
                return cubicYardToImperialTableSpoon(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.imperialTeaSpoon {
                return cubicYardToImperialTeaSpoon(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.cubicMile {
                return cubicYardToCubicMile(cubicYard: userInput)
            } else if from == K.cubicYard && to == K.cubicInch {
                return cubicYardToCubicInch(cubicYard: userInput)
            } else if from == K.cubicFoot && to == K.cubicMeter {
                return cubicFootToCubicMeter(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.cubicKilometer {
                return cubicFootToCubicKilometer(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.cubicCentimeter {
                return cubicFootToCubicCentimeter(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.cubicMillimeter {
                return cubicFootToCubicMillimeter(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.liter {
                return cubicFootToLiter(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.milliliter {
                return cubicFootToMilliliter(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.usGallon {
                return cubicFootToUsGallon(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.usQuart {
                return cubicFootToUsQuart(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.usPint {
                return cubicFootToUsPint(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.usCup {
                return cubicFootToUsCup(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.usFluidOunce {
                return cubicFootToUsFluidOunce(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.usTableSpoon {
                return cubicFootToUsTableSpoon(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.usTeaSpoon {
                return cubicFootToUsTeaSpoon(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.imperialGallon {
                return cubicFootToImperialGallon(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.imperialQuart {
                return cubicFootToImperialQuart(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.imperialPint {
                return cubicFootToImperialPint(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.imperialFluidOunce {
                return cubicFootToImperialFluidOunce(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.imperialTableSpoon {
                return cubicFootToImperialTableSpoon(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.imperialTeaSpoon {
                return cubicFootToImperialTeaSpoon(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.cubicMile {
                return cubicFootToCubicMile(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.cubicYard {
                return cubicFootToCubicYard(cubicFoot: userInput)
            } else if from == K.cubicFoot && to == K.cubicInch {
                return cubicFootToCubicInch(cubicFoot: userInput)
            } else if from == K.cubicInch && to == K.cubicMeter {
                return cubicInchToCubicMeter(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.cubicKilometer {
                return cubicInchToCubicKilometer(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.cubicCentimeter {
                return cubicInchToCubicCentimeter(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.cubicMillimeter {
                return cubicInchToCubicMillimeter(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.liter {
                return cubicInchToLiter(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.milliliter {
                return cubicInchToMilliliter(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.usGallon {
                return cubicInchToUsGallon(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.usQuart {
                return cubicInchToUsQuart(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.usPint {
                return cubicInchToUsPint(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.usCup {
                return cubicInchToUsCup(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.usFluidOunce {
                return cubicInchToUsFluidOunce(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.usTableSpoon {
                return cubicInchToUsTableSpoon(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.usTeaSpoon {
                return cubicInchToUsTeaSpoon(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.imperialGallon {
                return cubicInchToImperialGallon(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.imperialQuart {
                return cubicInchToImperialQuart(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.imperialPint {
                return cubicInchToImperialPint(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.imperialFluidOunce {
                return cubicInchToImperialFluidOunce(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.imperialTableSpoon {
                return cubicInchToImperialFluidOunce(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.imperialTeaSpoon {
                return cubicInchToImperialTeaSpoon(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.cubicMile {
                return cubicInchToCubicMile(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.cubicYard {
                return cubicInchToCubicYard(cubicInch: userInput)
            } else if from == K.cubicInch && to == K.cubicFoot {
                return cubicInchToCubicFoot(cubicInch: userInput)
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
    // Area
    static let squareMeter = "Square Meter"
    static let squareKilometer = "Square Kilometer"
    static let squareCentimeter = "Square Centimeter"
    static let squareMillimeter = "Square Millimeter"
    static let squareMicrometer = "Square Micrometer"
    static let hectare = "Hectare"
    static let squareMile = "Square Mile"
    static let squareYard = "Square Yard"
    static let squareFoot = "Square Foot"
    static let squareInch = "Square Inch"
    static let acre = "Acre"
    static let pyeong = "Pyeong"
    // Angle
    static let degree = "Degree"
    static let gradian = "Gradian"
    static let milliradian = "Milliradian"
    static let minuteOfArc = "Minute of arc"
    static let radian = "Radian"
    static let secondOfArc = "Second of arc"
    // Volume
    static let cubicMeter = "Cubic Meter"
    static let cubicKilometer = "Cubic Kilometer"
    static let cubicCentimeter = "Cubic Centimeter"
    static let cubicMillimeter = "Cubic Millimeter"
    static let liter = "Liter"
    static let milliliter = "Milliliter"
    static let usGallon = "US Gallon"
    static let usQuart = "US Quart"
    static let usPint = "US Pint"
    static let usCup = "US Cup"
    static let usFluidOunce = "US Fluid Once"
    static let usTableSpoon = "US Table Spoon"
    static let usTeaSpoon = "US Tea Spoon"
    static let imperialGallon = "Imperial Gallon"
    static let imperialQuart = "Imperial Quart"
    static let imperialPint = "Imperial Pint"
    static let imperialFluidOunce = "Imperial Fluid Once"
    static let imperialTableSpoon = "Imperial Table Spoon"
    static let imperialTeaSpoon = "Imperial Tea Spoon"
    static let cubicMile = "Cubic Mile"
    static let cubicYard = "Cubic Yard"
    static let cubicFoot = "Cubic Foot"
    static let cubicInch = "Cubic Inch"
}

// MARK: - All the conversion functions are here!
extension Unit {
    
    
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
    
    // MARK: - Area
    func squareMeterToSquareKilometer(squareMeter: String) -> Double {
        return Double(squareMeter)! * 1e-6
    }
    func squareMeterToSquareCentimeter(squareMeter: String) -> Double {
        return Double(squareMeter)! * 10000
    }
    func squareMeterToSquareMillimeter(squareMeter: String) -> Double {
        return Double(squareMeter)! * 1000000
    }
    func squareMeterToSquareMicrometer(squareMeter: String) -> Double {
        return Double(squareMeter)! * 1e12
    }
    func squareMeterToHectare(squareMeter: String) -> Double {
        return Double(squareMeter)! * (1.0 / 10000)
    }
    func squareMeterToSquareMile(squareMeter: String) -> Double {
        return Double(squareMeter)! * (3.86102e-7)
    }
    func squareMeterToSquareYard(squareMeter: String) -> Double {
        return Double(squareMeter)! * 1.19599
    }
    func squareMeterToSquareFoot(squareMeter: String) -> Double {
        return Double(squareMeter)! * 10.7639
    }
    func squareMeterToSquareInch(squareMeter: String) -> Double {
        return Double(squareMeter)! * 1550
    }
    func squareMeterToAcre(squareMeter: String) -> Double {
        return Double(squareMeter)! * 0.000247105
    }
    func squareMeterToPyeong(squareMeter: String) -> Double {
        return Double(squareMeter)! * 0.3025
    }
    func squareKilometerToSquareMeter(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 1e6
    }
    func squareKilometerToSquareCentimeter(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 1e10
    }
    func squareKilometerToSquareMillimeter(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 1e12
    }
    func squareKilometerToSquareMicrometer(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 1e18
    }
    func squareKilometerToHectare(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 100
    }
    func squareKilometerToSquareMile(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 0.386102
    }
    func squareKilometerToSquareYard(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 1.196e6
    }
    func squareKilometerToSquareFoot(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 1.076e7
    }
    func squareKilometerToSquareInch(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 1.55e9
    }
    func squareKilometerToAcre(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 247.105
    }
    func squareKilometerToPyeong(squareKilometer: String) -> Double {
        return Double(squareKilometer)! * 302500
    }
    func squareCentimeterToSquareMeter(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 0.0001
    }
    func squareCentimeterToSquareKilometer(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 1e-10
    }
    func squareCentimeterToSquareMillimeter(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 100
    }
    func squareCentimeterToSquareMicrometer(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 1e8
    }
    func squareCentimeterToHectare(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 1e-8
    }
    func squareCentimeterToSquareMile(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 3.86102e-11
    }
    func squareCentimeterToSquareYard(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 0.000119599
    }
    func squareCentimeterToSquareFoot(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 0.00107639
    }
    func squareCentimeterToSquareInch(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 0.155
    }
    func squareCentimeterToAcre(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 2.47105e-8
    }
    func squareCentimeterToPyeong(squareCentimeter: String) -> Double {
        return Double(squareCentimeter)! * 3.025e-8
    }
    func squareMillimeterToSquareMeter(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 1e-6
    }
    func squareMillimeterToSquareKilometer(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 1e-12
    }
    func squareMillimeterToSquareCentimeter(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 0.01
    }
    func squareMillimeterToSquareMicroMeter(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 1000000
    }
    func squareMillimeterToHectare(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 1e-10
    }
    func squareMillimeterToSquareMile(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 3.86102e-13
    }
    func squareMillimeterToSquareYard(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 1.19599e-6
    }
    func squareMillimeterToSquareFoot(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 1.07639e-5
    }
    func squareMillimeterToSquareInch(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 0.00155
    }
    func squareMillimeterToAcre(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 2.47105e-10
    }
    func squareMillimeterToPyeong(squareMillimeter: String) -> Double {
        return Double(squareMillimeter)! * 3.025e-7
    }
    func squareMicrometerToSquareMeter(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 1e-12
    }
    func squareMicrometerToSquareKilometer(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 1e-18
    }
    func squareMicrometerToSquareCentimeter(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 1e-8
    }
    func squareMicrometerToSquareMillimeter(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 1e-6
    }
    func squareMicrometerToHectare(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 1e-16
    }
    func squareMicrometerToSquareMile(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 3.86102e-19
    }
    func squareMicrometerToSquareYard(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 1.19599e-12
    }
    func squareMicrometerToSquareFoot(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 1.07639e-11
    }
    func squareMicrometerToSquareInch(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 1.55e-9
    }
    func squareMicrometerToAcre(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 2.47105e-16
    }
    func squareMicrometerToPyeong(squareMicrometer: String) -> Double {
        return Double(squareMicrometer)! * 3.025e-13
    }
    func hectareToSquareMeter(hectare: String) -> Double {
        return Double(hectare)! * 10000
    }
    func hectareToSquareKiloMeter(hectare: String) -> Double {
        return Double(hectare)! * 0.01
    }
    func hectareToSquareCentimeter(hectare: String) -> Double {
        return Double(hectare)! * 1e8
    }
    func hectareToSquareMillimeter(hectare: String) -> Double {
        return Double(hectare)! * 1e10
    }
    func hectareToSquareMicroMeter(hectare: String) -> Double {
        return Double(hectare)! * 1e16
    }
    func hectareToSquareMile(hectare: String) -> Double {
        return Double(hectare)! * 0.00386102
    }
    func hectareToSquareYard(hectare: String) -> Double {
        return Double(hectare)! * 11959.9
    }
    func hectareToSquareFoot(hectare: String) -> Double {
        return Double(hectare)! * 107639
    }
    func hectareToSquareInch(hectare: String) -> Double {
        return Double(hectare)! * 1.55e7
    }
    func hectareToAcre(hectare: String) -> Double {
        return Double(hectare)! * 2.47105
    }
    func hectareToPyeong(hectare: String) -> Double {
        return Double(hectare)! * 3025
    }
    func squareMileToSquareMeter(squareMile: String) -> Double {
        return Double(squareMile)! * 2.59e+6
    }
    func squareMileToSquareKilometer(squareMile: String) -> Double {
        return Double(squareMile)! * 2.58999
    }
    func squareMileToSquareCentimeter(squareMile: String) -> Double {
        return Double(squareMile)! * 2.59e10
    }
    func squareMileToSquareMillimeter(squareMile: String) -> Double {
        return Double(squareMile)! * 2.59e12
    }
    func squareMileToSquareMicrometer(squareMile: String) -> Double {
        return Double(squareMile)! * 2.59e18
    }
    func squareMileToHectare(squareMile: String) -> Double {
        return Double(squareMile)! * 258.999
    }
    func squareMileToSquareYard(squareMile: String) -> Double {
        return Double(squareMile)! * 3.098e6
    }
    func squareMileToSquareFoot(squareMile: String) -> Double {
        return Double(squareMile)! * 2.788e7
    }
    func squareMileToSquareInch(squareMile: String) -> Double {
        return Double(squareMile)! * 4.014e9
    }
    func squareMileToAcre(squareMile: String) -> Double {
        return Double(squareMile)! * 640
    }
    func squareMileToPyeong(squareMile: String) -> Double {
        return Double(squareMile)! * 783471
    }
    func squareYardToSquareMeter(squareYard: String) -> Double {
        return Double(squareYard)! * 0.836127
    }
    func squareYardToSquareKilometer(squareYard: String) -> Double {
        return Double(squareYard)! * 8.36127e-7
    }
    func squareYardToSquareCentimeter(squareYard: String) -> Double {
        return Double(squareYard)! * 8361.27
    }
    func squareYardToSquareMillimeter(squareYard: String) -> Double {
        return Double(squareYard)! * 836127
    }
    func squareYardToSquareMicrometer(squareYard: String) -> Double {
        return Double(squareYard)! * 8.361e11
    }
    func squareYardToHectare(squareYard: String) -> Double {
        return Double(squareYard)! * 8.36127e-5
    }
    func squareYardToSquareMile(squareYard: String) -> Double {
        return Double(squareYard)! * 3.22831e-7
    }
    func squareYardToSquareFoot(squareYard: String) -> Double {
        return Double(squareYard)! * 9
    }
    func squareYardToSquareInch(squareYard: String) -> Double {
        return Double(squareYard)! * 1296
    }
    func squareYardToAcre(squareYard: String) -> Double {
        return Double(squareYard)! * 4840
    }
    func squareYardToPyeong(squareYard: String) -> Double {
        return Double(squareYard)! * 0.252929
    }
    func squareFootToSquareMeter(squareFoot: String) -> Double {
        return Double(squareFoot)! * (1 / 10.764)
    }
    func squareFootToSquareKilometer(squareFoot: String) -> Double {
        return Double(squareFoot)! * 9.2903e-8
    }
    func squareFootToSquareCentimeter(squareFoot: String) -> Double {
        return Double(squareFoot)! * 929.03
    }
    func squareFootToSquareMillimeter(squareFoot: String) -> Double {
        return Double(squareFoot)! * 92903
    }
    func squareFootToSquareMicrometer(squareFoot: String) -> Double {
        return Double(squareFoot)! * 9.29e10
    }
    func squareFootToHectare(squareFoot: String) -> Double {
        return Double(squareFoot)! * 9.2903e-6
    }
    func squareFootToSquareMile(squareFoot: String) -> Double {
        return Double(squareFoot)! * 3.58701e-8
    }
    func squareFootToSquareYard(squareFoot: String) -> Double {
        return Double(squareFoot)! * (1 / 9.0)
    }
    func squareFootToSquareInch(squareFoot: String) -> Double {
        return Double(squareFoot)! * 144
    }
    func squareFootToAcre(squareFoot: String) -> Double {
        return Double(squareFoot)! * 2.29568e-5
    }
    func squareFootToPyeong(squareFoot: String) -> Double {
        return Double(squareFoot)! * 0.0281032
    }
    func squareInchToSquareMeter(squareInch: String) -> Double {
        return Double(squareInch)! * 0.00064516
    }
    func squareInchToSquareKilometer(squareInch: String) -> Double {
        return Double(squareInch)! * 6.4516e-10
    }
    func squareInchToSquareCentimeter(squareInch: String) -> Double {
        return Double(squareInch)! * 6.4516
    }
    func squareInchToSquareMillimeter(squareInch: String) -> Double {
        return Double(squareInch)! * 645.16
    }
    func squareInchToSquareMicrometer(squareInch: String) -> Double {
        return Double(squareInch)! * 6.452e8
    }
    func squareInchToHectare(squareInch: String) -> Double {
        return Double(squareInch)! * 6.4516e-8
    }
    func squareInchToSquareMile(squareInch: String) -> Double {
        return Double(squareInch)! * 2.49098e-10
    }
    func squareInchToSquareYard(squareInch: String) -> Double {
        return Double(squareInch)! * 0.000771605
    }
    func squareInchToAcre(squareInch: String) -> Double {
        return Double(squareInch)! * 1.59423e-7
    }
    func squareInchToSquareFoot(squareInch: String) -> Double {
        return Double(squareInch)! * (1 / 144)
    }
    func squareInchToPyeong(squareInch: String) -> Double {
        return Double(squareInch)! * 0.000195161
    }
    func acreToSquareMeter(acre: String) -> Double {
        return Double(acre)! * 4046.86
    }
    func acreToSquareKilometer(acre: String) -> Double {
        return Double(acre)! * 0.00404686
    }
    func acreToSquareMicrometer(acre: String) -> Double {
        return Double(acre)! * 4.047e15
    }
    func acreToHectare(acre: String) -> Double {
        return Double(acre)! * 0.404686
    }
    func acreToSquareMile(acre: String) -> Double {
        return Double(acre)! * 0.0015625
    }
    func acreToSquareYard(acre: String) -> Double {
        return Double(acre)! * 4840
    }
    func acreToSquareFoot(acre: String) -> Double {
        return Double(acre)! * 43560
    }
    func acreToSquareInch(acre: String) -> Double {
        return Double(acre)! * 6.273e6
    }
    func acreToPyeong(acre: String) -> Double {
        return Double(acre)! * 1224.17
    }
    func pyeongToSquareMeter(pyeong: String) -> Double {
        return Double(pyeong)! * 3.30576
    }
    func pyeongToSquareKilometer(pyeong: String) -> Double {
        return Double(pyeong)! * 3.30576e-6
    }
    func pyeongToSquareCentimeter(pyeong: String) -> Double {
        return Double(pyeong)! * 33057.9
    }
    func pyeongToSquareMillimeter(pyeong: String) -> Double {
        return Double(pyeong)! * 3.306e6
    }
    func pyeongToSquareMicrometer(pyeong: String) -> Double {
        return Double(pyeong)! * 3.306e12
    }
    func pyeongToHectare(pyeong: String) -> Double {
        return Double(pyeong)! * (1 / 3025)
    }
    func pyeongToSquareMile(pyeong: String) -> Double {
        return Double(pyeong)! * 1.27637e-6
    }
    func pyeongToSquareYard(pyeong: String) -> Double {
        return Double(pyeong)! * 3.95369
    }
    func pyeongToSquareFoot(pyeong: String) -> Double {
        return Double(pyeong)! * 35.5832
    }
    func pyeongToSquareInch(pyeong: String) -> Double {
        return Double(pyeong)! * 5123.98
    }
    func pyeongToAcre(pyeong: String) -> Double {
        return Double(pyeong)! * 0.000816877
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
        return Double(foot)! * (1 / 3.0)
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
        return Double(inch)! * (1 / 36.0)
    }
    func inchToFoot(inch: String) -> Double {
        return Double(inch)! * (1 / 12.0)
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
    // MARK: - Angle
    func degreeToGradian(degree: String) -> Double {
        return Double(degree)! * (200 / 180.0)
    }
    func degreeToMilliradian(degree: String) -> Double {
        return Double(degree)! * 1000 * Double.pi / 180.0
    }
    func degreeToMinuteofArc(degree: String) -> Double {
        return Double(degree)! * 60
    }
    func degreeToRadian(degree: String) -> Double {
        return Double(degree)! * Double.pi / 180.0
    }
    func degreeToSecondofArc(degree: String) -> Double {
        return Double(degree)! * 3600.0
    }
    func gradianToDegree(gradian: String) -> Double {
        return Double(gradian)! * 180 / 200.0
    }
    func gradianToMilliradian(gradian: String) -> Double {
        return Double(gradian)! * 1000 * Double.pi  / 200
    }
    func gradianToMinuteofArc(gradian: String) -> Double {
        return Double(gradian)! * 54
    }
    func gradianToRadian(gradian: String) -> Double {
        return Double(gradian)! * Double.pi / 200
    }
    func gradianToSecondofArc(gradian: String) -> Double {
        return Double(gradian)! * 3240
    }
    func milliradianToDegree(milliradian: String) -> Double {
        return Double(milliradian)! * 180 / 1000 * (1 / Double.pi)
    }
    func milliradianToGradian(milliradian: String) -> Double {
        return Double(milliradian)! * 200 / 1000 * (1 / Double.pi)
    }
    func milliradianToMinuteofArc(milliradian: String) -> Double {
        return Double(milliradian)! * 60 * 180 / 1000 * (1 / Double.pi)
    }
    func milliradianToRadian(milliradian: String) -> Double {
        return Double(milliradian)! * 0.001
    }
    func milliradianToSecondofArc(milliradian: String) -> Double {
        return Double(milliradian)! * 3600 * 180 / 1000 * (1 / Double.pi)
    }
    func minuteofArcToDegree(minuteofArc: String) -> Double {
        return Double(minuteofArc)! / 60
    }
    func minuteofArcToGradian(minuteofArc: String) -> Double {
        return Double(minuteofArc)! / 54
    }
    func minuteofArcToMilliradian(minuteofArc: String) -> Double {
        return Double(minuteofArc)! * 1000 * Double.pi * (1.0 / (60 * 180))
    }
    func minuteofArcToRadian(minuteofArc: String) -> Double {
        return Double(minuteofArc)! * Double.pi * (1.0 / (60 * 180))
    }
    func minuteofArcToSecondofArc(minuteofArc: String) -> Double {
        return Double(minuteofArc)! * 60
    }
    func radianToDegree(radian: String) -> Double {
        return Double(radian)! * 180 * (1 / Double.pi)
    }
    func radianToGradian(radian: String) -> Double {
        return Double(radian)! * 200 / Double.pi
    }
    func radianToMilliradian(radian: String) -> Double {
        return Double(radian)! * 1000
    }
    func radianToMinuteofArc(radian: String) -> Double {
        return Double(radian)! * 60 * 180 / Double.pi
    }
    func radianToSecondofArc(radian: String) -> Double {
        return Double(radian)! * 3600 * 180 / Double.pi
    }
    func secondofArcToDegree(secondofArc: String) -> Double {
        return Double(secondofArc)! / 3600
    }
    func secondofArcToGradian(secondofArc: String) -> Double {
        return Double(secondofArc)! / 3240
    }
    func secondofArcToMilliradian(secondofArc: String) -> Double {
        return Double(secondofArc)! * 1000 * Double.pi * (1.0 / (180 * 3600))
    }
    func secondofArcToMinuteofArc(secondofArc: String) -> Double {
        return Double(secondofArc)! / 60
    }
    func secondofArcToRadian(secondofArc: String) -> Double {
        return Double(secondofArc)! * Double.pi * (1.0 / (180 * 3600))
    }
    // MARK: - Volume
    func cubicMeterToCubicKilometer(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 1e-9
    }
    func cubicMeterToCubicCentimeter(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 1e6
    }
    func cubicMeterToCubicMillimeter(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 1e9
    }
    func cubicMeterToLiter(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 1000
    }
    func cubicMeterToMilliliter(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 1e6
    }
    func cubicMeterToUsGallon(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 264.172
    }
    func cubicMeterToUsQuart(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 1056.69
    }
    func cubicMeterToUsPint(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 2113.38
    }
    func cubicMeterToUsCup(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 4226.75
    }
    func cubicMeterToUsFluidOunce(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 33814
    }
    func cubicMeterToUsTableSpoon(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 67628
    }
    func cubicMeterToUsTeaSpoon(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 202884
    }
    func cubicMeterToImperialGallon(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 219.969
    }
    func cubicMeterToImperialQuart(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 879.877
    }
    func cubicMeterToImperialPint(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 1759.75
    }
    func cubicMeterToImperialFluidOunce(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 35195.1
    }
    func cubicMeterToImperialTableSpoon(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 56312.1
    }
    func cubicMeterToImperialTeaSpoon(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 168936
    }
    func cubicMeterToCubicMile(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 2.39913e-10
    }
    func cubicMeterToCubicYard(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 1.30795
    }
    func cubicMeterToCubicFoot(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 35.3147
    }
    func cubicMeterToCubicInch(cubicMeter: String) -> Double {
        return Double(cubicMeter)! * 61023.7
    }
    func cubicKilometerToCubicMeter(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 1e9
    }
    func cubicKilometerToCubicCentimeter(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 1e15
    }
    func cubicKilometerToCubicMillimeter(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 1e18
    }
    func cubicKilometerToLiter(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 1e12
    }
    func cubicKilometerToMilliliter(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 1e15
    }
    func cubicKilometerToUsGallon(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 2.642e111
    }
    func cubicKilometerToUsQuart(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 1.057e12
    }
    func cubicKilometerToUsPint(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 2.113e12
    }
    func cubicKilometerToUsCup(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 4.227e12
    }
    func cubicKilometerToUsFluidOunce(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 3.381e13
    }
    func cubicKilometerToUsTableSpoon(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 6.763e13
    }
    func cubicKilometerToUsTeaSpoon(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 2.029e14
    }
    func cubicKilometerToImperialGallon(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 2.2e11
    }
    func cubicKilometerToImperialQuart(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 8.799e11
    }
    func cubicKilometerToImperialPint(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 1.76e12
    }
    func cubicKilometerToImperialFluidOunce(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 3.52e13
    }
    func cubicKilometerToImperialTableSpoon(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 5.631e13
    }
    func cubicKilometerToImperialTeaSpoon(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 1.689e14
    }
    func cubicKilometerToCubicMile(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 0.239913
    }
    func cubicKilometerToCubicYard(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 1.308e9
    }
    func cubicKilometerToCubicFoot(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 3.531e10
    }
    func cubicKilometerToCubicInch(cubicKilometer: String) -> Double {
        return Double(cubicKilometer)! * 6.102e13
    }
    func cubicCentimeterToCubicMeter(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 1e-6
    }
    func cubicCentimeterToCubicKilometer(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 1e-15
    }
    func cubicCentimeterToCubicMillimeter(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 1000
    }
    func cubicCentimeterToLiter(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.001
    }
    func cubicCentimeterToMilliliter(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)!
    }
    func cubicCentimeterToUsGallon(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.000264172
    }
    func cubicCentimeterToUsQuart(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.00105669
    }
    func cubicCentimeterToUsPint(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.00211338
    }
    func cubicCentimeterToUsCup(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.00422675
    }
    func cubicCentimeterToUsFluidOunce(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.033814
    }
    func cubicCentimeterToUsTableSpoon(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.067628
    }
    func cubicCentimeterToUsTeaSpoon(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.202884
    }
    func cubicCentimeterToImperialGallon(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.000219969
    }
    func cubicCentimeterToImperialQuart(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.000879877
    }
    func cubicCentimeterToImperialPint(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.00175975
    }
    func cubicCentimeterToImperialFluidOunce(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.0351951
    }
    func cubicCentimeterToImperialTableSpoon(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.0563121
    }
    func cubicCentimeterToImperialTeaSpoon(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.168936
    }
    func cubicCentimeterToCubicMile(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 2.39913e-16
    }
    func cubicCentimeterToCubicYard(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 1.30795e-6
    }
    func cubicCentimeterToCubicFoot(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 3.53147
    }
    func cubicCentimeterToCubicInch(cubicCentimeter: String) -> Double {
        return Double(cubicCentimeter)! * 0.0610237
    }
    func cubicMillimeterToCubicMeter(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 1e-9
    }
    func cubicMillimeterToCubicKilometer(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 1e-18
    }
    func cubicMillimeterToCubicCentimeter(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 0.001
    }
    func cubicMillimeterToLiter(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 1e-6
    }
    func cubicMillimeterToMilliliter(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 0.001
    }
    func cubicMillimeterToUsGallon(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 2.64172e-7
    }
    func cubicMillimeterToUsQuart(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 1.05669e-6
    }
    func cubicMillimeterToUsPint(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 2.11338e-6
    }
    func cubicMillimeterToUsCup(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 4.22675e-6
    }
    func cubicMillimeterToUsFluidOunce(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 3.3814e-5
    }
    func cubicMillimeterToUsTableSpoon(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 6.7628e-5
    }
    func cubicMillimeterToUsTeaSpoon(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 0.000202884
    }
    func cubicMillimeterToImperialGallon(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 2.19969e-7
    }
    func cubicMillimeterToImperialQuart(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 8.79877e-7
    }
    func cubicMillimeterToImperialPint(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 1.75975e-6
    }
    func cubicMillimeterToImperialFluidOunce(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 3.51951e-5
    }
    func cubicMillimeterToImperialTableSpoon(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 5.63121e-5
    }
    func cubicMillimeterToImperialTeaSpoon(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 0.000168936
    }
    func cubicMillimeterToCubicMile(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 2.39913e-19
    }
    func cubicMillimeterToCubicYard(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 1.30795e-9
    }
    func cubicMillimeterToCubicFoot(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 3.53147e-8
    }
    func cubicMillimeterToCubicInch(cubicMillimeter: String) -> Double {
        return Double(cubicMillimeter)! * 6.10237e-5
    }
    func literToCubicMeter(liter: String) -> Double {
        return Double(liter)! * 0.001
    }
    func literToCubicKilometer(liter: String) -> Double {
        return Double(liter)! * 1e-12
    }
    func literToCubicCentimeter(liter: String) -> Double {
        return Double(liter)! * 1000
    }
    func literToCubicMillimeter(liter: String) -> Double {
        return Double(liter)! * 1000000
    }
    func literToMilliliter(liter: String) -> Double {
        return Double(liter)! * 1000
    }
    func literToUsGallon(liter: String) -> Double {
        return Double(liter)! * 0.264172
    }
    func literToUsQuart(liter: String) -> Double {
        return Double(liter)! * 1.05669
    }
    func literToUsPint(liter: String) -> Double {
        return Double(liter)! * 2.11338
    }
    func literToUsCup(liter: String) -> Double {
        return Double(liter)! * 4.22675
    }
    func literToUsFluidOunce(liter: String) -> Double {
        return Double(liter)! * 33.814
    }
    func literToUsTableSpoon(liter: String) -> Double {
        return Double(liter)! * 67.628
    }
    func literToUsTeaSpoon(liter: String) -> Double {
        return Double(liter)! * 202.884
    }
    func literToImperialGallon(liter: String) -> Double {
        return Double(liter)! * 0.219969
    }
    func literToImperialQuart(liter: String) -> Double {
        return Double(liter)! * 0.879877
    }
    func literToImperialPint(liter: String) -> Double {
        return Double(liter)! * 1.75975
    }
    func literToImperialFluidOunce(liter: String) -> Double {
        return Double(liter)! * 35.1951
    }
    func literToImperialTableSpoon(liter: String) -> Double {
        return Double(liter)! * 56.3121
    }
    func literToImperialTeaSpoon(liter: String) -> Double {
        return Double(liter)! * 168.936
    }
    func literToCubicMile(liter: String) -> Double {
        return Double(liter)! * 2.39913e-13
    }
    func literToCubicYard(liter: String) -> Double {
        return Double(liter)! * 0.00130795
    }
    func literToCubicFoot(liter: String) -> Double {
        return Double(liter)! * 0.0353147
    }
    func literToCubicInch(liter: String) -> Double {
        return Double(liter)! * 61.0237
    }
    func milliliterToCubicMeter(milliliter: String) -> Double {
        return Double(milliliter)! * 1e-6
    }
    func milliliterToCubicKilometer(milliliter: String) -> Double {
        return Double(milliliter)! * 1e-15
    }
    func milliliterToCubicCentimeter(milliliter: String) -> Double {
        return Double(milliliter)!
    }
    func milliliterToCubicMillimeter(milliliter: String) -> Double {
        return Double(milliliter)! * 1000
    }
    func milliliterToLiter(milliliter: String) -> Double {
        return Double(milliliter)! * 0.001
    }
    func milliliterToUsGallon(milliliter: String) -> Double {
        return Double(milliliter)! * 0.000264172
    }
    func milliliterToUsQuart(milliliter: String) -> Double {
        return Double(milliliter)! * 0.00105669
    }
    func milliliterToUsPint(milliliter: String) -> Double {
        return Double(milliliter)! * 0.00211338
    }
    func milliliterToUsCup(milliliter: String) -> Double {
        return Double(milliliter)! * 0.00422675
    }
    func milliliterToUsFluidOunce(milliliter: String) -> Double {
        return Double(milliliter)! * 0.033814
    }
    func milliliterToUsTableSpoon(milliliter: String) -> Double {
        return Double(milliliter)! * 0.067628
    }
    func milliliterToUsTeaSpoon(milliliter: String) -> Double {
        return Double(milliliter)! * 0.202884
    }
    func milliliterToImperialGallon(milliliter: String) -> Double {
        return Double(milliliter)! * 0.000219969
    }
    func milliliterToImperialQuart(milliliter: String) -> Double {
        return Double(milliliter)! * 0.000879877
    }
    func milliliterToImperialPint(milliliter: String) -> Double {
        return Double(milliliter)! * 0.00175975
    }
    func milliliterToImperialFluidOunce(milliliter: String) -> Double {
        return Double(milliliter)! * 0.0351951
    }
    func milliliterToImperialTableSpoon(milliliter: String) -> Double {
        return Double(milliliter)! * 0.0563121
    }
    func milliliterToImperialTeaSpoon(milliliter: String) -> Double {
        return Double(milliliter)! * 0.168936
    }
    func milliliterToCubicMile(milliliter: String) -> Double {
        return Double(milliliter)! * 2.39913e-16
    }
    func milliliterToCubicYard(milliliter: String) -> Double {
        return Double(milliliter)! * 1.30795e-6
    }
    func milliliterToCubicFoot(milliliter: String) -> Double {
        return Double(milliliter)! * 3.53147e-5
    }
    func milliliterToCubicInch(milliliter: String) -> Double {
        return Double(milliliter)! * 0.0610237
    }
    func usGallonToCubicMeter(usGallon: String) -> Double {
        return Double(usGallon)! * 0.00378541
    }
    func usGallonToCubicKilometer(usGallon: String) -> Double {
        return Double(usGallon)! * 3.78541e-12
    }
    func usGallonToCubicCentimeter(usGallon: String) -> Double {
        return Double(usGallon)! * 3785.41
    }
    func usGallonToCubicMillimeter(usGallon: String) -> Double {
        return Double(usGallon)! * 3.785e6
    }
    func usGallonToLiter(usGallon: String) -> Double {
        return Double(usGallon)! * 3.78541
    }
    func usGallonToMilliliter(usGallon: String) -> Double {
        return Double(usGallon)! * 3785.41
    }
    func usGallonToUsQuart(usGallon: String) -> Double {
        return Double(usGallon)! * 4
    }
    func usGallonToUsPint(usGallon: String) -> Double {
        return Double(usGallon)! * 8
    }
    func usGallonToUsCup(usGallon: String) -> Double {
        return Double(usGallon)! * 16
    }
    func usGallonToUsFluidOunce(usGallon: String) -> Double {
        return Double(usGallon)! * 128
    }
    func usGallonToUsTableSpoon(usGallon: String) -> Double {
        return Double(usGallon)! * 256
    }
    func usGallonToUsTeaSpoon(usGallon: String) -> Double {
        return Double(usGallon)! * 768
    }
    func usGallonToImperialGallon(usGallon: String) -> Double {
        return Double(usGallon)! * (1 / 1.201)
    }
    func usGallonToImperialQuart(usGallon: String) -> Double {
        return Double(usGallon)! * 3.3307
    }
    func usGallonToImperialPint(usGallon: String) -> Double {
        return Double(usGallon)! * 6.66139
    }
    func usGallonToImperialFluidOunce(usGallon: String) -> Double {
        return Double(usGallon)! * 133.228
    }
    func usGallonToImperialTableSpoon(usGallon: String) -> Double {
        return Double(usGallon)! * 213.165
    }
    func usGallonToImperialTeaSpoon(usGallon: String) -> Double {
        return Double(usGallon)! * 639.494
    }
    func usGallonToCubicMile(usGallon: String) -> Double {
        return Double(usGallon)! * 9.08169e-13
    }
    func usGallonToCubicYard(usGallon: String) -> Double {
        return Double(usGallon)! * 0.00495113
    }
    func usGallonToCubicFoot(usGallon: String) -> Double {
        return Double(usGallon)! * 0.133681
    }
    func usGallonToCubicInch(usGallon: String) -> Double {
        return Double(usGallon)! * 231
    }
    func usQuartToCubicMeter(usQuart: String) -> Double {
        return Double(usQuart)! * 0.000946353
    }
    func usQuartToCubicKilometer(usQuart: String) -> Double {
        return Double(usQuart)! * 9.46353e-13
    }
    func usQuartToCubicCentimeter(usQuart: String) -> Double {
        return Double(usQuart)! * 946.353
    }
    func usQuartToCubicMillimeter(usQuart: String) -> Double {
        return Double(usQuart)! * 946353
    }
    func usQuartToLiter(usQuart: String) -> Double {
        return Double(usQuart)! * 0.946353
    }
    func usQuartToMilliliter(usQuart: String) -> Double {
        return Double(usQuart)! * 946.353
    }
    func usQuartToUsGallon(usQuart: String) -> Double {
        return Double(usQuart)! * 0.25
    }
    func usQuartToUsPint(usQuart: String) -> Double {
        return Double(usQuart)! * 2
    }
    func usQuartToUsCup(usQuart: String) -> Double {
        return Double(usQuart)! * 4
    }
    func usQuartToUsFluidOunce(usQuart: String) -> Double {
        return Double(usQuart)! * 32
    }
    func usQuartToUsTableSpoon(usQuart: String) -> Double {
        return Double(usQuart)! * 64
    }
    func usQuartToUsTeaSpoon(usQuart: String) -> Double {
        return Double(usQuart)! * 192
    }
    func usQuartToImperialGallon(usQuart: String) -> Double {
        return Double(usQuart)! * 0.208169
    }
    func usQuartToImperialQuart(usQuart: String) -> Double {
        return Double(usQuart)! * (1 / 1.201)
    }
    func usQuartToImperialPint(usQuart: String) -> Double {
        return Double(usQuart)! * 1.66535
    }
    func usQuartToImperialFluidOunce(usQuart: String) -> Double {
        return Double(usQuart)! * 33.307
    }
    func usQuartToImperialTableSpoon(usQuart: String) -> Double {
        return Double(usQuart)! * 53.2911
    }
    func usQuartToImperialTeaSpoon(usQuart: String) -> Double {
        return Double(usQuart)! * 159.873
    }
    func usQuartToCubicMile(usQuart: String) -> Double {
        return Double(usQuart)! * 2.27042e-13
    }
    func usQuartToCubicYard(usQuart: String) -> Double {
        return Double(usQuart)! * 0.00123778
    }
    func usQuartToCubicFoot(usQuart: String) -> Double {
        return Double(usQuart)! * 0.0334201
    }
    func usQuartToCubicInch(usQuart: String) -> Double {
        return Double(usQuart)! * 57.75
    }
    func usPintToCubicMeter(usPint: String) -> Double {
        return Double(usPint)! * 0.000473176
    }
    func usPintToCubicKilometer(usPint: String) -> Double {
        return Double(usPint)! * 4.73176e-13
    }
    func usPintToCubicCentimeter(usPint: String) -> Double {
        return Double(usPint)! * 473.176
    }
    func usPintToCubicMillimeter(usPint: String) -> Double {
        return Double(usPint)! * 473176
    }
    func usPintToLiter(usPint: String) -> Double {
        return Double(usPint)! * 0.473176
    }
    func usPintToMilliliter(usPint: String) -> Double {
        return Double(usPint)! * 473.176
    }
    func usPintToUsGallon(usPint: String) -> Double {
        return Double(usPint)! * 0.125
    }
    func usPintToUsQuart(usPint: String) -> Double {
        return Double(usPint)! * 0.5
    }
    func usPintToUsCup(usPint: String) -> Double {
        return Double(usPint)! * 2
    }
    func usPintToUsFluidOunce(usPint: String) -> Double {
        return Double(usPint)! * 16
    }
    func usPintToUsTableSpoon(usPint: String) -> Double {
        return Double(usPint)! * 32
    }
    func usPintToUsTeaSpoon(usPint: String) -> Double {
        return Double(usPint)! * 96
    }
    func usPintToImperialGallon(usPint: String) -> Double {
        return Double(usPint)! * 0.104084
    }
    func usPintToImperialQuart(usPint: String) -> Double {
        return Double(usPint)! * 0.416337
    }
    func usPintToImperialPint(usPint: String) -> Double {
        return Double(usPint)! * 0.832674
    }
    func usPintToImperialFluidOunce(usPint: String) -> Double {
        return Double(usPint)! * 16.6535
    }
    func usPintToImperialTableSpoon(usPint: String) -> Double {
        return Double(usPint)! * 26.6456
    }
    func usPintToImperialTeaSpoon(usPint: String) -> Double {
        return Double(usPint)! * 79.9367
    }
    func usPintToCubicMile(usPint: String) -> Double {
        return Double(usPint)! * 1.13521e-13
    }
    func usPintToCubicYard(usPint: String) -> Double {
        return Double(usPint)! * 0.000618891
    }
    func usPintToCubicFoot(usPint: String) -> Double {
        return Double(usPint)! * 0.0167101
    }
    func usPintToCubicInch(usPint: String) -> Double {
        return Double(usPint)! * 28.875
    }
    func usCupToCubicMeter(usCup: String) -> Double {
        return Double(usCup)! * 0.000236588
    }
    func usCupToCubicKilometer(usCup: String) -> Double {
        return Double(usCup)! * 2.36588e-13
    }
    func usCupToCubicCentimeter(usCup: String) -> Double {
        return Double(usCup)! * 236.588
    }
    func usCupToCubicMillimeter(usCup: String) -> Double {
        return Double(usCup)! * 236588
    }
    func usCupToLiter(usCup: String) -> Double {
        return Double(usCup)! * 0.236588
    }
    func usCupToMilliliter(usCup: String) -> Double {
        return Double(usCup)! * 236.588
    }
    func usCupToUsGallon(usCup: String) -> Double {
        return Double(usCup)! * 0.0625
    }
    func usCupToUsQuart(usCup: String) -> Double {
        return Double(usCup)! * 0.25
    }
    func usCupToUsPint(usCup: String) -> Double {
        return Double(usCup)! * 0.5
    }
    func usCupToUsFluidOunce(usCup: String) -> Double {
        return Double(usCup)! * 8
    }
    func usCupToUsTableSpoon(usCup: String) -> Double {
        return Double(usCup)! * 16
    }
    func usCupToUsTeaSpoon(usCup: String) -> Double {
        return Double(usCup)! * 48
    }
    func usCupToImperialGallon(usCup: String) -> Double {
        return Double(usCup)! * 0.0520421
    }
    func usCupToImperialQuart(usCup: String) -> Double {
        return Double(usCup)! * 0.208169
    }
    func usCupToImperialPint(usCup: String) -> Double {
        return Double(usCup)! * 0.416337
    }
    func usCupToImperialFluidOunce(usCup: String) -> Double {
        return Double(usCup)! * 8.32674
    }
    func usCupToImperialTableSpoon(usCup: String) -> Double {
        return Double(usCup)! * 13.3228
    }
    func usCupToImperialTeaSpoon(usCup: String) -> Double {
        return Double(usCup)! * 39.9683
    }
    func usCupToCubicMile(usCup: String) -> Double {
        return Double(usCup)! * 5.67605e-14
    }
    func usCupToCubicYard(usCup: String) -> Double {
        return Double(usCup)! * 0.0003094457
    }
    func usCupToCubicFoot(usCup: String) -> Double {
        return Double(usCup)! * 0.00835503
    }
    func usCupToCubicInch(usCup: String) -> Double {
        return Double(usCup)! * 14.4375
    }
    func usFluidOunceToCubicMeter(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 2.95735e-5
    }
    func usFluidOunceToCubicKilometer(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 2.95735e-14
    }
    func usFluidOunceToCubicCentimeter(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 29.5735
    }
    func usFluidOunceToCubicMillimeter(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 29573.5
    }
    func usFluidOunceToLiter(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 0.0295735
    }
    func usFluidOunceToMilliliter(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 29.5735
    }
    func usFluidOunceToUsGallon(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 0.0078125
    }
    func usFluidOunceToUsQuart(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 0.03125
    }
    func usFluidOunceToUsPint(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 0.0625
    }
    func usFluidOunceToUsCup(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 0.125
    }
    func usFluidOunceToUsTableSpoon(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 2
    }
    func usFluidOunceToUsTeaSpoon(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 6
    }
    func usFluidOunceToImperialGallon(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 0.00650527
    }
    func usFluidOunceToImperialQuart(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 0.0260211
    }
    func usFluidOunceToImperialPint(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 0.0520421
    }
    func usFluidOunceToImperialFluidOunce(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 1.04084
    }
    func usFluidOunceToImperialTableSpoon(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 1.66535
    }
    func usFluidOunceToImperialTeaSpoon(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 4.99604
    }
    func usFluidOunceToCubicMile(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 7.09507e-15
    }
    func usFluidOunceToCubicYard(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 3.86807e-5
    }
    func usFluidOunceToCubicFoot(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 0.00104438
    }
    func usFluidOunceToCubicInch(usFluidOunce: String) -> Double {
        return Double(usFluidOunce)! * 1.80469
    }
    func usTableSpoonToCubicMeter(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 1.47868e-5
    }
    func usTableSpoonToCubicKilometer(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 1.47868e-14
    }
    func usTableSpoonToCubicCentimeter(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 14.7868
    }
    func usTableSpoonToCubicMillimeter(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 14786.8
    }
    func usTableSpoonToLiter(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.0147868
    }
    func usTableSpoonToMilliliter(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 14.7868
    }
    func usTableSpoonToUsGallon(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.00390625
    }
    func usTableSpoonToUsQuart(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.015625
    }
    func usTableSpoonToUsPint(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.03125
    }
    func usTableSpoonToUsCup(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.0625
    }
    func usTableSpoonToUsFluidOunce(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.5
    }
    func usTableSpoonToUsTeaSpoon(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 3
    }
    func usTableSpoonToImperialGallon(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.00325263
    }
    func usTableSpoonToImperialQuart(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.0130105
    }
    func usTableSpoonToImperialPint(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.0260211
    }
    func usTableSpoonToImperialFluidOunce(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.520421
    }
    func usTableSpoonToImperialTableSpoon(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.832674
    }
    func usTableSpoonToImperialTeaSpoon(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 2.49802
    }
    func usTableSpoonToCubicMile(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 3.54753e-15
    }
    func usTableSpoonToCubicYard(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 1.93404e-5
    }
    func usTableSpoonToCubicFoot(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.00052219
    }
    func usTableSpoonToCubicInch(usTableSpoon: String) -> Double {
        return Double(usTableSpoon)! * 0.902344
    }
    func usTeaSpoonToCubicMeter(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 4.92892e-6
    }
    func usTeaSpoonToCubicKilometer(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 4.92892e-15
    }
    func usTeaSpoonToCubicCentimeter(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 4.92892
    }
    func usTeaSpoonToCubicMillimeter(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 4928.92
    }
    func usTeaSpoonToLiter(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.00492892
    }
    func usTeaSpoonToMilliliter(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 4.92892
    }
    func usTeaSpoonToUsGallon(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.00130208
    }
    func usTeaSpoonToUsQuart(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.00520833
    }
    func usTeaSpoonToUsPint(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.0104167
    }
    func usTeaSpoonToUsCup(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.0208333
    }
    func usTeaSpoonToUsFluidOunce(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * (1.0 / 6)
    }
    func usTeaSpoonToUsTableSpoon(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * (1.0 / 3)
    }
    func usTeaSpoonToImperialGallon(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.00108421
    }
    func usTeaSpoonToImperialQuart(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.00433684
    }
    func usTeaSpoonToImperialPint(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.00867369
    }
    func usTeaSpoonToImperialFluidOunce(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.173474
    }
    func usTeaSpoonToImperialTableSpoon(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.277558
    }
    func usTeaSpoonToImperialTeaSpoon(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * (1 / 1.201)
    }
    func usTeaSpoonToCubicMile(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 1.18251e-15
    }
    func usTeaSpoonToCubicYard(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 6.44678e-6
    }
    func usTeaSpoonToCubicFoot(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.000174063
    }
    func usTeaSpoonToCubicInch(usTeaSpoon: String) -> Double {
        return Double(usTeaSpoon)! * 0.300781
    }
    func imperialGallonToCubicMeter(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 0.00454609
    }
    func imperialGallonToCubicKilometer(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 4.54609e-12
    }
    func imperialGallonToCubicCentimeter(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 4546.09
    }
    func imperialGallonToCubicMillimeter(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 4.546e6
    }
    func imperialGallonToLiter(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 4.54609
    }
    func imperialGallonToMilliliter(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 4.546e6
    }
    func imperialGallonToUsGallon(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 1.201
    }
    func imperialGallonToUsQuart(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 4.8038
    }
    func imperialGallonToUsPint(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 9.6076
    }
    func imperialGallonToUsCup(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 18.942
    }
    func imperialGallonToUsFluidOunce(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 153.722
    }
    func imperialGallonToUsTableSpoon(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 307.443
    }
    func imperialGallonToUsTeaSpoon(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 922.33
    }
    func imperialGallonToImperialQuart(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 4
    }
    func imperialGallonToImperialPint(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 8
    }
    func imperialGallonToImperialFluidOunce(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 160
    }
    func imperialGallonToImperialTableSpoon(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 256
    }
    func imperialGallonToImperialTeaSpoon(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 768
    }
    func imperialGallonToCubicMile(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 1.09066e-12
    }
    func imperialGallonToCubicYard(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 0.00594606
    }
    func imperialGallonToCubicFoot(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 0.160544
    }
    func imperialGallonToCubicInch(imperialGallon: String) -> Double {
        return Double(imperialGallon)! * 277.419
    }
    func imperialQuartToCubicMeter(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 0.00113652
    }
    func imperialQuartToCubicKilometer(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 1.13652e-12
    }
    func imperialQuartToCubicCentimeter(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 1136.52
    }
    func imperialQuartToCubicMillimeter(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 1.137e6
    }
    func imperialQuartToLiter(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 1.13652
    }
    func imperialQuartToMilliliter(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 1136.52
    }
    func imperialQuartToUsGallon(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 0.300237
    }
    func imperialQuartToUsQuart(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 1.201
    }
    func imperialQuartToUsPint(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 2.4019
    }
    func imperialQuartToUsCup(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 4.8038
    }
    func imperialQuartToUsFluidOunce(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 38.4304
    }
    func imperialQuartToUsTableSpoon(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 76.8608
    }
    func imperialQuartToUsTeaSpoon(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 230.582
    }
    func imperialQuartToImperialGallon(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 0.25
    }
    func imperialQuartToImperialPint(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 2
    }
    func imperialQuartToImperialFluidOunce(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 40
    }
    func imperialQuartToImperialTableSpoon(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 64
    }
    func imperialQuartToImperialTeaSpoon(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 192
    }
    func imperialQuartToCubicMile(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 2.72666e-13
    }
    func imperialQuartToCubicYard(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 0.00148652
    }
    func imperialQuartToCubicFoot(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 0.0401359
    }
    func imperialQuartToCubicInch(imperialQuart: String) -> Double {
        return Double(imperialQuart)! * 69.3549
    }
    func imperialPintToCubicMeter(imperialPint: String) -> Double {
        return Double(imperialPint)! * 0.000568261
    }
    func imperialPintToCubicKilometer(imperialPint: String) -> Double {
        return Double(imperialPint)! * 5.68261e-13
    }
    func imperialPintToCubicCentimeter(imperialPint: String) -> Double {
        return Double(imperialPint)! * 568.261
    }
    func imperialPintToCubicMillimeter(imperialPint: String) -> Double {
        return Double(imperialPint)! * 568261
    }
    func imperialPintToLiter(imperialPint: String) -> Double {
        return Double(imperialPint)! * 0.568261
    }
    func imperialPintToMilliliter(imperialPint: String) -> Double {
        return Double(imperialPint)! * 568.261
    }
    func imperialPintToUsGallon(imperialPint: String) -> Double {
        return Double(imperialPint)! * 0.150119
    }
    func imperialPintToUsQuart(imperialPint: String) -> Double {
        return Double(imperialPint)! * 0.600475
    }
    func imperialPintToUsPint(imperialPint: String) -> Double {
        return Double(imperialPint)! * 1.201
    }
    func imperialPintToUsCup(imperialPint: String) -> Double {
        return Double(imperialPint)! * 2.4019
    }
    func imperialPintToUsFluidOunce(imperialPint: String) -> Double {
        return Double(imperialPint)! * 19.2152
    }
    func imperialPintToUsTableSpoon(imperialPint: String) -> Double {
        return Double(imperialPint)! * 38.4304
    }
    func imperialPintToUsTeaSpoon(imperialPint: String) -> Double {
        return Double(imperialPint)! * 115.291
    }
    func imperialPintToImperialGallon(imperialPint: String) -> Double {
        return Double(imperialPint)! * 0.125
    }
    func imperialPintToImperialQuart(imperialPint: String) -> Double {
        return Double(imperialPint)! * 0.5
    }
    func imperialPintToImperialFluidOunce(imperialPint: String) -> Double {
        return Double(imperialPint)! * 20
    }
    func imperialPintToImperialTableSpoon(imperialPint: String) -> Double {
        return Double(imperialPint)! * 32
    }
    func imperialPintToImperialTeaSpoon(imperialPint: String) -> Double {
        return Double(imperialPint)! * 96
    }
    func imperialPintToCubicMile(imperialPint: String) -> Double {
        return Double(imperialPint)! * 1.36333e-13
    }
    func imperialPintToCubicYard(imperialPint: String) -> Double {
        return Double(imperialPint)! * 0.000743258
    }
    func imperialPintToCubicFoot(imperialPint: String) -> Double {
        return Double(imperialPint)! * 0.020068
    }
    func imperialPintToCubicInch(imperialPint: String) -> Double {
        return Double(imperialPint)! * 34.6774
    }
    func imperialFluidOunceToCubicMeter(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 2.84131e-5
    }
    func imperialFluidOunceToCubicKilometer(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 2.84131e-14
    }
    func imperialFluidOunceToCubicCentimeter(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 28.4131
    }
    func imperialFluidOunceToCubicMillimeter(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 28413.1
    }
    func imperialFluidOunceToLiter(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.0284131
    }
    func imperialFluidOunceToMilliliter(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 28.4131
    }
    func imperialFluidOunceToUsGallon(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.00750594
    }
    func imperialFluidOunceToUsQuart(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.0300237
    }
    func imperialFluidOunceToUsPint(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.0600475
    }
    func imperialFluidOunceToUsCup(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.120095
    }
    func imperialFluidOunceToUsFluidOunce(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.96076
    }
    func imperialFluidOunceToUsTableSpoon(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 1.92152
    }
    func imperialFluidOunceToUsTeaSpoon(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 5.76456
    }
    func imperialFluidOunceToImperialGallon(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.00625
    }
    func imperialFluidOunceToImperialQuart(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.025
    }
    func imperialFluidOunceToImperialPint(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.05
    }
    func imperialFluidOunceToImperialTableSpoon(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 1.6
    }
    func imperialFluidOunceToImperialTeaspoon(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 4.8
    }
    func imperialFluidOunceToCubicMile(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 6.81666e-15
    }
    func imperialFluidOunceToCubicYard(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 3.71629e-5
    }
    func imperialFluidOunceToCubicFoot(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 0.0010034
    }
    func imperialFluidOunceToCubicInch(imperialFluidOunce: String) -> Double {
        return Double(imperialFluidOunce)! * 1.73387
    }
    func imperialTableSpoonToCubicMeter(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 1.77582e-5
    }
    func imperialTableSpoonToCubicKilometer(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 1.77582e-14
    }
    func imperialTableSpoonToCubicCentimeter(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 17.7582
    }
    func imperialTableSpoonToCubicMillimeter(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 17758.2
    }
    func imperialTableSpoonToLiter(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.0177582
    }
    func imperialTableSpoonToMilliliter(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 17.7582
    }
    func imperialTableSpoonToUsGallon(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.00469121
    }
    func imperialTableSpoonToUsQuart(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.0187649
    }
    func imperialTableSpoonToUsPint(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.0375297
    }
    func imperialTableSpoonToUsCup(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.0750594
    }
    func imperialTableSpoonToUsFluidOunce(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.600475
    }
    func imperialTableSpoonToUsTableSpoon(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 1.201
    }
    func imperialTableSpoonToUsTeaSpoon(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 3.60285
    }
    func imperialTableSpoonToImperialGallon(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.00390625
    }
    func imperialTableSpoonToImperialQuart(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.015625
    }
    func imperialTableSpoonToImperialPint(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.03125
    }
    func imperialTableSpoonToImperialFluidOunce(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.625
    }
    func imperialTableSpoonToImperialTeaSpoon(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 3
    }
    func imperialTableSpoonToCubicMile(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 4.26041e-15
    }
    func imperialTableSpoonToCubicYard(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 2.32268e-5
    }
    func imperialTableSpoonToCubicFoot(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 0.000627124
    }
    func imperialTableSpoonToCubicInch(imperialTableSpoon: String) -> Double {
        return Double(imperialTableSpoon)! * 1.08367
    }
    func imperialTeaSpoonToCubicMeter(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 5.91939e-6
    }
    func imperialTeaSpoonToCubicKilometer(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 5.91939e-15
    }
    func imperialTeaSpoonToCubicCentimeter(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 5.91939
    }
    func imperialTeaSpoonToCubicMillimeter(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 4928.921595
    }
    func imperialTeaSpoonToLiter(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.00591939
    }
    func imperialTeaSpoonToMilliliter(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 5.91939
    }
    func imperialTeaSpoonToUsGallon(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.00156374
    }
    func imperialTeaSpoonToUsQuart(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.00625495
    }
    func imperialTeaSpoonToUsPint(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.0125099
    }
    func imperialTeaSpoonToUsCup(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.0250198
    }
    func imperialTeaSpoonToUsFluidOunce(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.200158
    }
    func imperialTeaSpoonToUsTableSpoon(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.400317
    }
    func imperialTeaSpoonToUsTeaSpoon(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 1.201
    }
    func imperialTeaSpoonToImperialGallon(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.00130208
    }
    func imperialTeaSpoonToImperialQuart(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.00520834
    }
    func imperialTeaSpoonToImperialPint(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.0104167
    }
    func imperialTeaSpoonToImperialFluidOunce(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.208333
    }
    func imperialTeaSpoonToImperialTableSpoon(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * (1.0 / 3)
    }
    func imperialTeaSpoonToCubicMile(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 1.42014e-15
    }
    func imperialTeaSpoonToCubicYard(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 7.74227e-6
    }
    func imperialTeaSpoonToCubicFoot(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.000209041
    }
    func imperialTeaSpoonToCubicInch(imperialTeaSpoon: String) -> Double {
        return Double(imperialTeaSpoon)! * 0.361223
    }
    func cubicMileToCubicMeter(cubicMile: String) -> Double {
        return Double(cubicMile)! * 4.168e9
    }
    func cubicMileToCubicKilometer(cubicMile: String) -> Double {
        return Double(cubicMile)! * 4.16818
    }
    func cubicMileToCubicCentimeter(cubicMile: String) -> Double {
        return Double(cubicMile)! * 4.168e15
    }
    func cubicMileToCubicMillimeter(cubicMile: String) -> Double {
        return Double(cubicMile)! * 4.168e18
    }
    func cubicMileToLiter(cubicMile: String) -> Double {
        return Double(cubicMile)! * 4.168e12
    }
    func cubicMileToMilliliter(cubicMile: String) -> Double {
        return Double(cubicMile)! * 4.168e15
    }
    func cubicMileToUsGallon(cubicMile: String) -> Double {
        return Double(cubicMile)! * 1.101e12
    }
    func cubicMileToUsQuart(cubicMile: String) -> Double {
        return Double(cubicMile)! * 4.404e12
    }
    func cubicMileToUsPint(cubicMile: String) -> Double {
        return Double(cubicMile)! * 8.809e12
    }
    func cubicMileToUsCup(cubicMile: String) -> Double {
        return Double(cubicMile)! * 1.762e13
    }
    func cubicMileToUsFluidOunce(cubicMile: String) -> Double {
        return Double(cubicMile)! * 1.409e14
    }
    func cubicMileToUsTableSpoon(cubicMile: String) -> Double {
        return Double(cubicMile)! * 2.819e14
    }
    func cubicMileToUsTeaSpoon(cubicMile: String) -> Double {
        return Double(cubicMile)! * 8.457e14
    }
    func cubicMileToImperialGallon(cubicMile: String) -> Double {
        return Double(cubicMile)! * 9.169e11
    }
    func cubicMileToImperialQuart(cubicMile: String) -> Double {
        return Double(cubicMile)! * 3.667e12
    }
    func cubicMileToImperialPint(cubicMile: String) -> Double {
        return Double(cubicMile)! * 7.335e12
    }
    func cubicMileToImperialFluidOunce(cubicMile: String) -> Double {
        return Double(cubicMile)! * 1.467e14
    }
    func cubicMileToImperialTableSpoon(cubicMile: String) -> Double {
        return Double(cubicMile)! * 2.347e14
    }
    func cubicMileToImperialTeaSpoon(cubicMile: String) -> Double {
        return Double(cubicMile)! * 7.042e14
    }
    func cubicMileToCubicYard(cubicMile: String) -> Double {
        return Double(cubicMile)! * 5.452e9
    }
    func cubicMileToCubicFoot(cubicMile: String) -> Double {
        return Double(cubicMile)! * 1.472e11
    }
    func cubicMileToCubicInch(cubicMile: String) -> Double {
        return Double(cubicMile)! * 2.544e14
    }
    func cubicYardToCubicMeter(cubicYard: String) -> Double {
        return Double(cubicYard)! * (1 / 1.308)
    }
    func cubicYardToCubicKilometer(cubicYard: String) -> Double {
        return Double(cubicYard)! * (1 / 1.308e9)
    }
    func cubicYardToCubicCentimeter(cubicYard: String) -> Double {
        return Double(cubicYard)! * 764555
    }
    func cubicYardToCubicMillimeter(cubicYard: String) -> Double {
        return Double(cubicYard)! * 7.646e8
    }
    func cubicYardToLiter(cubicYard: String) -> Double {
        return Double(cubicYard)! * 764.555
    }
    func cubicYardToMilliliter(cubicYard: String) -> Double {
        return Double(cubicYard)! * 764555
    }
    func cubicYardToUsGallon(cubicYard: String) -> Double {
        return Double(cubicYard)! * 201.974
    }
    func cubicYardToUsQuart(cubicYard: String) -> Double {
        return Double(cubicYard)! * 807.896
    }
    func cubicYardToUsPint(cubicYard: String) -> Double {
        return Double(cubicYard)! * 1615.79
    }
    func cubicYardToUsCup(cubicYard: String) -> Double {
        return Double(cubicYard)! * 3231
    }
    func cubicYardToUsFluidOunce(cubicYard: String) -> Double {
        return Double(cubicYard)! * 25852.7
    }
    func cubicYardToUsTableSpoon(cubicYard: String) -> Double {
        return Double(cubicYard)! * 51705.4
    }
    func cubicYardToUsTeaSpoon(cubicYard: String) -> Double {
        return Double(cubicYard)! * 155116
    }
    func cubicYardToImperialGallon(cubicYard: String) -> Double {
        return Double(cubicYard)! * 168.179
    }
    func cubicYardToImperialQuart(cubicYard: String) -> Double {
        return Double(cubicYard)! * 672.714
    }
    func cubicYardToImperialPint(cubicYard: String) -> Double {
        return Double(cubicYard)! * 1345.43
    }
    func cubicYardToImperialFluidOunce(cubicYard: String) -> Double {
        return Double(cubicYard)! * 26908.6
    }
    func cubicYardToImperialTableSpoon(cubicYard: String) -> Double {
        return Double(cubicYard)! * 43053.7
    }
    func cubicYardToImperialTeaSpoon(cubicYard: String) -> Double {
        return Double(cubicYard)! * 129161
    }
    func cubicYardToCubicMile(cubicYard: String) -> Double {
        return Double(cubicYard)! * 1.83426e-10
    }
    func cubicYardToCubicFoot(cubicYard: String) -> Double {
        return Double(cubicYard)! * 27
    }
    func cubicYardToCubicInch(cubicYard: String) -> Double {
        return Double(cubicYard)! * 46656
    }
    func cubicFootToCubicMeter(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 0.0283168
    }
    func cubicFootToCubicKilometer(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 2.83168e-11
    }
    func cubicFootToCubicCentimeter(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 28316.8
    }
    func cubicFootToCubicMillimeter(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 2.832e7
    }
    func cubicFootToLiter(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 28.3168
    }
    func cubicFootToMilliliter(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 28316.8
    }
    func cubicFootToUsGallon(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 7.48052
    }
    func cubicFootToUsQuart(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 29.9221
    }
    func cubicFootToUsPint(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 59.8442
    }
    func cubicFootToUsCup(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 119.688
    }
    func cubicFootToUsFluidOunce(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 957.506
    }
    func cubicFootToUsTableSpoon(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 1915.01
    }
    func cubicFootToUsTeaSpoon(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 5745.04
    }
    func cubicFootToImperialGallon(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 6.22884
    }
    func cubicFootToImperialQuart(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 24.9153
    }
    func cubicFootToImperialPint(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 49.8307
    }
    func cubicFootToImperialFluidOunce(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 996.614
    }
    func cubicFootToImperialTableSpoon(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 1594.58
    }
    func cubicFootToImperialTeaSpoon(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 4783.74
    }
    func cubicFootToCubicMile(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 6.79357e-12
    }
    func cubicFootToCubicYard(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * (1 / 27.0)
    }
    func cubicFootToCubicInch(cubicFoot: String) -> Double {
        return Double(cubicFoot)! * 1728
    }
    func cubicInchToCubicMeter(cubicInch: String) -> Double {
        return Double(cubicInch)! * 1.63871e-5
    }
    func cubicInchToCubicKilometer(cubicInch: String) -> Double {
        return Double(cubicInch)! * 1.63871e-14
    }
    func cubicInchToCubicCentimeter(cubicInch: String) -> Double {
        return Double(cubicInch)! * 16.3871
    }
    func cubicInchToCubicMillimeter(cubicInch: String) -> Double {
        return Double(cubicInch)! * 16387.1
    }
    func cubicInchToLiter(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.0163871
    }
    func cubicInchToMilliliter(cubicInch: String) -> Double {
        return Double(cubicInch)! * 16.3871
    }
    func cubicInchToUsGallon(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.004329
    }
    func cubicInchToUsQuart(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.017316
    }
    func cubicInchToUsPint(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.034632
    }
    func cubicInchToUsCup(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.0692641
    }
    func cubicInchToUsFluidOunce(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.554113
    }
    func cubicInchToUsTableSpoon(cubicInch: String) -> Double {
        return Double(cubicInch)! * 1.10823
    }
    func cubicInchToUsTeaSpoon(cubicInch: String) -> Double {
        return Double(cubicInch)! * 3.32468
    }
    func cubicInchToImperialGallon(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.00360465
    }
    func cubicInchToImperialQuart(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.0144186
    }
    func cubicInchToImperialPint(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.0288372
    }
    func cubicInchToImperialFluidOunce(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.576744
    }
    func cubicInchToImperialTableSpoon(cubicInch: String) -> Double {
        return Double(cubicInch)! * 0.92279
    }
    func cubicInchToImperialTeaSpoon(cubicInch: String) -> Double {
        return Double(cubicInch)! * 2.76837
    }
    func cubicInchToCubicMile(cubicInch: String) -> Double {
        return Double(cubicInch)! * 3.93147e-15
    }
    func cubicInchToCubicYard(cubicInch: String) -> Double {
        return Double(cubicInch)! * (1.0 / 46656)
    }
    func cubicInchToCubicFoot(cubicInch: String) -> Double {
        return Double(cubicInch)! * (1.0 / 1728)
    }
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
