//
//  Localizacao.swift
//  AluraIngressos
//
//  Created by Lorena Rodrigues Bruno on 01/10/2018.
//  Copyright © 2018 Lorena Rodrigues Bruno. All rights reserved.
//

import UIKit

class Localizacao: NSObject {
    var logradouro = ""
    var bairro = ""
    var cidade = ""
    var uf = ""
 
    init( _ dicionario: Dictionary<String, String>) {
        logradouro = dicionario["logradouro"] ?? ""
        bairro = dicionario["bairro"] ?? ""
        cidade = dicionario["localidade"] ?? ""
        uf = dicionario["uf"] ?? ""
    }
    
    class func serializacaoObjeto(dicionario:Dictionary<String, String>) -> Localizacao {
        let localizacao = Localizacao(dicionario)
        return localizacao
    }
    
}
