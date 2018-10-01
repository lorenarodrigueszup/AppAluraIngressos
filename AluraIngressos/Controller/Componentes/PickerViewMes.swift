//
//  PickerViewMes.swift
//  AluraIngressos
//
//  Created by Lorena Rodrigues Bruno on 01/10/2018.
//  Copyright © 2018 Lorena Rodrigues Bruno. All rights reserved.
//

import UIKit

protocol PickerViewMesSelecionado {
    func mesSelecionado(mes: String)
    
}

class PickerViewMes: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var delegate:PickerViewMesSelecionado?
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 12
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row+1)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if delegate != nil {
            delegate?.mesSelecionado(mes: "\(row+1)")
        }
    }

}
