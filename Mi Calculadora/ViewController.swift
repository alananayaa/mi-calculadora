//
//  ViewController.swift
//  Mi Calculadora
//
//  Created by Alan Anaya Araujo on 19/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    var negativeSymbolActive: Bool = false
    var decimalPointActive: Bool = false
    var operationTextActive: Bool = false
    var activeOperation: Operations? = nil
    var operatorClicked: Operations? = nil
    var tempResult: Double = 0.0
    var tempValue: Double? = nil
    var newOperation: Bool = false
    
    @IBOutlet weak var clearButton: CalcButton!
    @IBOutlet var operationSelected: [CalcButton]!
    @IBOutlet weak var result: UILabel!
    @IBAction func inputNumbers(_ sender: UIButton) {
        if result.text == "0" {
            clearButton.imageView?.image = UIImage(named: "AC")
        }
        if sender.tag == 16 {
            if negativeSymbolActive {
                result.text?.removeFirst()
                negativeSymbolActive = false
            } else if result.text != "0" {
                result.text = "-\(result.text!)"
                negativeSymbolActive = true
            }
            tempResult = (Double(result.text!) ?? 0.0)
            return
        }else if activeOperation != nil && !operationTextActive {
            result.text = ""
            operationTextActive = true
            decimalPointActive = false
        }
        if let resultText = result.text {
            if resultText.count < 25 {
                switch sender.tag {
                    case 10:
                        if !decimalPointActive {
                            result.text? += "."
                            decimalPointActive = true
                            clearButton.imageView?.image = UIImage(named: "C")
                        }
                        
                    default:
                        if result.text == "0" || newOperation {
                            result.text = ""
                            newOperation = false
                        }
                        result.text? += "\(sender.tag)"
                        clearButton.imageView?.image = UIImage(named: "C")
                }
            }
            
        }
    }
    
    @IBAction func clearResult(_ sender: UIButton) {
        result.text = "0"
        clearButton.imageView?.image = UIImage(named: "AC")
        decimalPointActive = false
        activeOperation = nil
        tempResult = 0.0
        negativeSymbolActive = false
        operationTextActive = false
        tempValue = nil
        
        operationSelected.forEach { button in
            button.style = 3
        }
        
    }
    
    @IBAction func calcOperations(_ sender: CalcButton) {
        operationSelected.forEach { button in
            if sender.tag == button.tag && sender.tag != 15 {
                button.style = 4
            }else {
                button.style = 3
            }
        }
        
        switch sender.tag {
            case 11:
                activeOperation = .division
                
            case 12:
                activeOperation = .multiply
                
            case 13:
                activeOperation = .substract
                
            case 14:
                activeOperation = .sum
                
            case 15:
                print("igual")
                
            case 17:
                print("porcentaje")
                
            default:
                print("Operation not implemented")
        }
        
        if (tempResult == 0.0 || newOperation) {
            tempResult = (Double(result.text!) ?? 0.0)
            operationTextActive = false
        } else if sender.tag == 17 {
            if activeOperation != nil {
                let percentageResult = operation(operation1: tempResult, operation2: Double(result.text!) ?? 0.0, calcOperator: .percentage)
                result.text = "\(percentageResult.clean)"
                operationTextActive = false
            }
        } else if operatorClicked == activeOperation || sender.tag == 15{
            resultCalculation(isEqual: sender.tag == 15)
        } else {
            operatorClicked = activeOperation
            tempResult = (Double(result.text!) ?? 0.0)
            tempValue = nil
            operationTextActive = false
        }
        
    }
    
    private func operation(operation1: Double, operation2: Double, calcOperator: Operations) -> Double {
        print(operation1, operation2, calcOperator)
        switch calcOperator {
            case .sum:
                return operation1 + operation2
            case .substract:
                return operation1 - operation2
            case .multiply:
                return operation1 * operation2
            case .division:
                return operation1 / operation2
            case .percentage:
                return operation1 * (operation2 / 100)
        }
        
    }
    
    private func resultCalculation(isEqual: Bool = false) {
        guard let activeOperation = activeOperation else {
            return
        }
        if isEqual && tempValue == nil{
            tempValue = Double(result.text!) ?? 0.0
        }else if !isEqual{
            tempValue = nil
        }
        tempResult = operation(operation1: tempResult, operation2: isEqual ? tempValue! : Double(result.text!) ?? 0.0, calcOperator: activeOperation)
        negativeSymbolActive = tempResult < 0
        result.text = "\(tempResult.clean)"
        operationTextActive = false
    }
    
    @IBAction func deleteText(_ sender: Any) {
        if result.text != "0" && result.text!.count == 1 {
            result.text = "0"
        } else if result.text != "0" {
            result.text = String(result.text!.dropLast()) != "-" ? String(result.text!.dropLast()) : "0"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


}
