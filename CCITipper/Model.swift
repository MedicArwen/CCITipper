//
//  Model.swift
//  CCITipper
//
//  Created by etudiant-16 on 18/01/2019.
//  Copyright © 2019 Networked Hells. All rights reserved.
//

import Foundation
struct Model
{
    var billAmount = 0.0
    let tipRates = [0.1,0.15,0.20]
    var serviceLevel = 0
    let arrayForServiceLevel = ["Service 10%","Service 15%","Service 20%"]
    let arrayForServiceQuality = ["Service moyen","Service correct","Très bon service"]
    
    var tipAmount : Double {return billAmount * tipRates[serviceLevel]}
    var serviceLabelText : String { return arrayForServiceLevel[serviceLevel]}
    var serviceQualityText : String {return arrayForServiceQuality[serviceLevel]}
}
