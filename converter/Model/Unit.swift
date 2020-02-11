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
            return [[]]
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
        return Double(squareMeter)! * (1 / 10000)
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
        return Double(squareFoot)! * (1 / 9)
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
