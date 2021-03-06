//
//  conversionVC.swift
//  converter
//
//  Created by TAEWON KONG on 1/3/20.
//  Copyright © 2020 TAEWON KONG. All rights reserved.
//

import UIKit

class conversionVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var conversionPicker: UIPickerView!
    var unit: Unit!
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var output: UILabel!

    var fromRow: Int = 0
    var from: String?
    var toRow = 0
    var to: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        conversionPicker.delegate = self
        conversionPicker.dataSource = self
        userInput.delegate = self
        from = unit.unitPicker[0][0]
        to = unit.unitPicker[0][0]
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return unit.unitPicker[0].count // This should always be 2.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return unit.unitPicker.count // number of units(rows)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return unit.unitPicker[row][component]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        fromRow = pickerView.selectedRow(inComponent: 0)
        from = unit.unitPicker[fromRow][0]
        toRow = pickerView.selectedRow(inComponent: 1)
        to = unit.unitPicker[toRow][1]
        
        if let validUserInput = userInput.text {
            if validUserInput == "" {
                return
            }
            if from! == to! {
                output.text =  validUserInput
                return
            }
            let result = unit.convert(unit: unit!, userInput: validUserInput, from: from!, to: to!)
            print(result)
            output.text = String(result)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let validUserInput = userInput.text {
            if validUserInput == "" {
                output.text = ""
                return
            }
            let dotCount = validUserInput.filter { $0 == "." }.count
            if dotCount == 2 {
                self.userInput.text = String(validUserInput.dropLast(1))
                return
            }
            if validUserInput.last! == "." {
                return
            }
            if from! == to! {
                output.text = validUserInput
                return
            }
            let result = unit.convert(unit: unit!, userInput: validUserInput, from: from!, to: to!)
            print(result)
            output.text = String(result)
        }
    }
}

extension conversionVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
