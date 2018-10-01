//
//  PickerViewAno.swift
//  AluraIngressos
//
//  Created by Lorena Rodrigues Bruno on 01/10/2018.
//  Copyright © 2018 Lorena Rodrigues Bruno. All rights reserved.
//

import UIKit

protocol PickerViewAnoSelecionado {
    func anoSelecionado(ano: String)
    
}

class PickerViewAno: NSObject, UIPickerViewDataSource, UIPickerViewDelegate{
    var delegate : PickerViewAnoSelecionado?
    let listaDeAnos = ["2017", "2018", "2019", "2020", "2021", "2022" ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listaDeAnos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let anoAtual = listaDeAnos[row]
        return anoAtual
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if delegate != nil {
            delegate?.anoSelecionado(ano: "\(row+1)")
        }
    }
    
    
}
