//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Dylan barrett on 4/6/19.
//  Copyright © 2019 Dylan barrett. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController{
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    var conversionType = [
        Conversions(label: "Farenheit to Celsius", inputUnit: "°F", outputUnit: "°C"),
        Conversions(label: "Celsius to Farenheit", inputUnit: "°C", outputUnit: "°F"),
        Conversions(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"),
        Conversions(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultConversion = conversionType[0]
        outputDisplay.text = defaultConversion.outputUnit
        inputDisplay.text = defaultConversion.inputUnit
    }
    
    @IBAction func conversionAction(_ sender: Any) {
        let actionSheetConversion = UIAlertController(title: "Conversions", message: "Select a conversion type", preferredStyle: UIAlertController.Style.actionSheet)
        
        let fahrToCel = UIAlertAction(title: conversionType[0].label, style: .default) { action in
            self.outputDisplay.text = self.conversionType[0].outputUnit
            self.inputDisplay.text = self.conversionType[0].inputUnit
        }
        let celToFahr = UIAlertAction(title: conversionType[1].label, style: .default) { action in
            self.outputDisplay.text = self.conversionType[1].outputUnit
            self.inputDisplay.text = self.conversionType[1].inputUnit
        }
        let milToKilo = UIAlertAction(title: conversionType[2].label, style: .default) { action in
            self.outputDisplay.text = self.conversionType[2].outputUnit
            self.inputDisplay.text = self.conversionType[2].inputUnit
        }
        let kiloToMil = UIAlertAction(title: conversionType[3].label, style: .default) { action in
            self.outputDisplay.text = self.conversionType[3].outputUnit
            self.inputDisplay.text = self.conversionType[3].inputUnit
        }
        
        actionSheetConversion.addAction(fahrToCel)
        actionSheetConversion.addAction(celToFahr)
        actionSheetConversion.addAction(milToKilo)
        actionSheetConversion.addAction(kiloToMil)
        
        present(actionSheetConversion, animated: true, completion: nil)
    }
}
