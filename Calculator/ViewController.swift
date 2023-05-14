//
//  ViewController.swift
//  Calculator
//
//  Created by Sinem Ünal on 10.05.2023.
//

import UIKit

class ViewController: UIViewController {

    
  
    @IBOutlet weak var customInput: UILabel!

    
    var calculator:String = ""
    
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var additionButton: UIButton!
    @IBOutlet weak var subractionButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var negativeButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    
    @IBOutlet weak var stackOne: UIStackView!
    @IBOutlet weak var zeroButton: UIButton!
    
    var arrayButtons : [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.buttonCornerRadius();
        self.clearAll();

    }
    
    func buttonCornerRadius() {
        divisionButton.layer.cornerRadius = divisionButton.frame.width / 2
        additionButton.layer.cornerRadius = additionButton.frame.width / 2
        subractionButton.layer.cornerRadius = subractionButton.frame.width / 2
        multiplicationButton.layer.cornerRadius = multiplicationButton.frame.width / 2
        clearButton.layer.cornerRadius = clearButton.frame.width / 2
        negativeButton.layer.cornerRadius = negativeButton.frame.width / 2
        percentButton.layer.cornerRadius = percentButton.frame.width / 2
        equalButton.layer.cornerRadius = 50.0
        nineButton.layer.cornerRadius = nineButton.frame.width / 2
        eightButton.layer.cornerRadius = eightButton.frame.width / 2
        sevenButton.layer.cornerRadius = sevenButton.frame.width / 2
        sixButton.layer.cornerRadius = sixButton.frame.width / 2
        fiveButton.layer.cornerRadius = fiveButton.frame.width / 2
        fourButton.layer.cornerRadius = fourButton.frame.width / 2
        threeButton.layer.cornerRadius = threeButton.frame.width / 2
        twoButton.layer.cornerRadius = twoButton.frame.width / 2
        oneButton.layer.cornerRadius = oneButton.frame.width / 2
        zeroButton.layer.cornerRadius = 50.0
    }
    func clearAll()
    {
            calculator = ""
            customInput.text = ""
        
    }
    func addToTransaction(value: String)
    {
        if(value == "-+"){
            calculator = "-" + calculator;
        }else{
            calculator = calculator + value
            
        }
        customInput.text = calculator
    }
  
    
    @IBAction func zeroClick(_ sender: Any) {
        self.addToTransaction(value: "0")
    }
    
    @IBAction func oneClick(_ sender: Any) {
        self.addToTransaction(value: "1")
    }
    @IBAction func twoClick(_ sender: Any) {
        self.addToTransaction(value: "2")
    }
    
    
    @IBAction func threeClick(_ sender: Any) {
        self.addToTransaction(value: "3")
    }
    
    
    @IBAction func fourClick(_ sender: Any) {
        self.addToTransaction(value: "4")
    }
    
    @IBAction func fiveClick(_ sender: Any) {
        self.addToTransaction(value: "5")
    }
    
    @IBAction func sixClick(_ sender: Any) {
        self.addToTransaction(value: "6")
        
    }
    
    @IBAction func sevenClick(_ sender: Any) {
        self.addToTransaction(value: "7")
    }
    
    @IBAction func eightClick(_ sender: Any) {
        self.addToTransaction(value: "8")
    }
    
    @IBAction func nineClick(_ sender: Any) {
        self.addToTransaction(value: "9")
    }
    
    
    @IBAction func equal(_ sender: Any) {
      
        let percent = calculator.replacingOccurrences(of: "%", with: "*0.01")
        let expression = NSExpression(format: percent)
        let calculate = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: calculate)
        customInput.text = resultString;
    }
    
    @IBAction func percent(_ sender: Any) {
        self.addToTransaction(value: "%")
    }
    
    @IBAction func negative(_ sender: Any) {
        self.addToTransaction(value: "-+")
    }
    @IBAction func clear(_ sender: Any) {
        self.clearAll()
    }
    
    @IBAction func subraction(_ sender: Any) {
        self.addToTransaction(value: "-")
    }
    
    @IBAction func division(_ sender: Any) {
        self.addToTransaction(value: "/")
      
    }
    
    @IBAction func multiplication(_ sender: Any) {
        self.addToTransaction(value: "*")
    }
    
    @IBAction func ddition(_ sender: Any) {
        self.addToTransaction(value: "+")
    }
    
    func formatResult(result: Double) -> String
        {
            if(result.truncatingRemainder(dividingBy: 1) == 0)
            {
                return String(format: "%.0f", result)
            }
            else
            {
                return String(format: "%.2f", result)
            }
        }
    
}

