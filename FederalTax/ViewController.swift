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
        
        guard let NameString = Name.text else {
            return
        }
        guard let TotalIncomeString = TotalIncome.text else {
            return
        }
        guard let TotalIncomeDouble = Double(TotalIncomeString) else {
            ErrorIncomeMessage.text = ("Please enter a valid input")
            return
        }
    
        switch TotalIncomeDouble {
        case 0...47630:
            let FinalTaxDue = (TotalIncomeDouble * 0.15)
            let FinalEffectiveTaxRate = (FinalTaxDue/TotalIncomeDouble)
            
            TotalTaxDue.text = String(format: "$%.2f", FinalTaxDue)
            EffectiveTaxRate.text = String(format: "$%.2f", FinalEffectiveTaxRate)
        case 47631...95259:
            let FinalTaxDue = (7144.5 + (TotalIncomeDouble-47630)*0.205)
            let FinalEffectiveTaxRate = (FinalTaxDue/TotalIncomeDouble)
            
           TotalTaxDue.text = String(format: "$%.2f", FinalTaxDue)
            EffectiveTaxRate.text = String(format: "$%.2f", FinalEffectiveTaxRate)
        case 95260...147667:
            let FinalTaxDue = (16908.445 + (TotalIncomeDouble - 95259) * 0.26)
            let FinalEffectiveTaxRate = (FinalTaxDue/TotalIncomeDouble)
            
            TotalTaxDue.text = String(format: "$%.2f", FinalTaxDue)
            EffectiveTaxRate.text = String(format: "$%.2f", FinalEffectiveTaxRate)
        case 147668...210371:
            let FinalTaxDue = (30534.525 + (TotalIncomeDouble - 147667) * 0.29)
            let FinalEffectiveTaxRate = (FinalTaxDue/TotalIncomeDouble)
            
           TotalTaxDue.text = String(format: "$%.2f", FinalTaxDue)
            EffectiveTaxRate.text = String(format: "$%.2f", FinalEffectiveTaxRate)
        default:
            let FinalTaxDue = (48718.16 + TotalIncomeDouble * 0.33)
            let FinalEffectiveTaxRate = (FinalTaxDue/TotalIncomeDouble)
            
            TotalTaxDue.text = String(format: "$%.2f", FinalTaxDue)
            EffectiveTaxRate.text = String(format: "$%.2f", FinalEffectiveTaxRate)
        }
        
        
    }

}

