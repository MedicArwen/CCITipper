//
//  CalculVC.swift
//  CCITipper
//
//  Created by etudiant-16 on 18/01/2019.
//  Copyright © 2019 Networked Hells. All rights reserved.
//

import UIKit

class CalculVC: UIViewController, UITextFieldDelegate {

    
    // MARK: - vars and outlets
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var serviceLabel: UILabel!
    
    @IBOutlet weak var firstStarButton: UIButton!
    @IBOutlet weak var secondStarButton: UIButton!
    @IBOutlet weak var thirdStarButton: UIButton!
    
    @IBOutlet weak var serviceQualityLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    var model = Model()
    // MARK: - view's funcs
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        amountTextField.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = false
        
    }
    @IBAction func starButtonTapped(_ sender: UIButton)
    {
        model.serviceLevel = sender.tag
        serviceLabel.text = model.serviceLabelText
        serviceQualityLabel.text = model.serviceQualityText
        tipAmountLabel.text = doubleToString(myDouble: model.tipAmount, nbOfDigits: 2)! + " €"
        let starEmpty = UIImage(named: "etoile_creuse")
        let starFull = UIImage(named: "etoile_pleine")
        switch sender.tag {
        case 0:
            secondStarButton.setImage(starEmpty, for: .normal)
            thirdStarButton.setImage(starEmpty, for: .normal)
        case 1:
            secondStarButton.setImage(starFull, for: .normal)
            thirdStarButton.setImage(starEmpty, for: .normal)
        case 2:
            secondStarButton.setImage(starFull, for: .normal)
            thirdStarButton.setImage(starFull, for: .normal)
        default:
            break;
        }
        // calcul
        
    }
    // MARK: - Others funcs
    func calcul()
    {
        if let amount = amountTextField.text,let formatedAmount = stringToDouble(amount)
        {
            model.billAmount = formatedAmount
            tipAmountLabel.text = doubleToString(myDouble: model.tipAmount, nbOfDigits: 2)!+" €"
        }
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text?.count == 0
        {
            tipAmountLabel.text = "0.00 €"
        }
        else
        {
        calcul()
        }
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // détecte la sortie du clavier graphique
        self.view.endEditing(true)
    }
}
