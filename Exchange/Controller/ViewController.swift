//
//  ViewController.swift
//  Exchange
//
//  Created by Marina Karpova on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {

    var exchangeValue = 0.0
    var currencyLabel = "€"
    var exchangeBrain = ExchangeBrain()
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var plnEurButton: UIButton!
    @IBOutlet weak var eurPlnButton: UIButton!
    @IBOutlet weak var plnUahButton: UIButton!
    @IBOutlet weak var equalsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    
    @IBAction func buttonsChanged(_ sender: UIButton) {
        
        billTextField.resignFirstResponder()
        let buttonPressed = sender.currentTitle
//        tipsyBrain.getTip = buttonPressed!
        
        if buttonPressed == "PLN-EUR" {
            eurPlnButton.isSelected = false
            plnUahButton.isSelected = false
            plnEurButton.isSelected = true
            exchangeValue = 4.76
            currencyLabel = "€"
        } else if buttonPressed == "EUR-PLN" {
            plnEurButton.isSelected = false
            plnUahButton.isSelected = false
            eurPlnButton.isSelected = true
            exchangeValue = 0.21
            currencyLabel = "zł"
        } else if buttonPressed == "PLN-UAH" {
            plnEurButton.isSelected = false
            eurPlnButton.isSelected = false
            plnUahButton.isSelected = true
            exchangeValue = 0.12
            currencyLabel = "₴"
        }
        
        updateUI()
        
    }
    
    @objc func updateUI() {
        equalsLabel.text = exchangeBrain.exchange(input: billTextField.text!, exchangeValue: exchangeValue, currency: currencyLabel)
    }
    
}

