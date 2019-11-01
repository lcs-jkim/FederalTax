//
//  ViewController.swift
//  FederalTax
//
//  Created by Kim, Jenis on 2019-11-01.
//  Copyright © 2019 Kim, Jenis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK PROPERTIES
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var TotalIncome: UITextField!
    @IBOutlet weak var TotalTaxDue: UILabel!
    @IBOutlet weak var EffectiveTaxRate: UILabel!
    @IBOutlet weak var ErrorNameMessage: UILabel!
    @IBOutlet weak var ErrorIncomeMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func CalculateTax(_ sender: Any) {
        
        guard Name.text != nil else {
            ErrorNameMessage.text = ("Please enter your name")
            return
        }
        guard let TotalIncomeString = TotalIncome.text else {
            ErrorIncomeMessage.text = ("Please enter your income")
            return
        }
        guard let TotalIncomeDouble = Double(TotalIncomeString) else {
            ErrorIncomeMessage.text = ("Please enter a valid input")
            return
        }
    
    }

}

