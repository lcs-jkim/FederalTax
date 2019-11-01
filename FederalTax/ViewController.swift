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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func CalculateTax(_ sender: Any) {
        
        guard Name.text != nil else {
            return
        }
        guard let TotalIncomeAsDouble = TotalIncome.text else {
            return
        }
        
        switch TotalTaxDue.text {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
    
    }

}

