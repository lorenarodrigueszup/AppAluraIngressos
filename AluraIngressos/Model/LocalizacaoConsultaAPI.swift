//
//  LocalizacaoConsultaAPI.swift
//  AluraIngressos
//
//  Created by Lorena Rodrigues Bruno on 01/10/2018.
//  Copyright © 2018 Lorena Rodrigues Bruno. All rights reserved.
//

import UIKit
import Alamofire

class LocalizacaoConsultaAPI: NSObject {
    
    func consultaViaCepAPI(cep: String, sucesso:@escaping(_ localizacao:Localizacao) -> Void, falha:@escaping(_ error:Error) -> Void)  {
        Alamofire.request("https://viacep.com.br/ws/\(cep)/json/", method: .get).validate().responseJSON { (response) in
            switch response.result {
            case .success:
                if let resultado = response.result.value as? Dictionary<String, String> {
                    sucesso(Localizacao(resultado))
                }
                break
            case .failure:
                falha(response.error!)
                break
            }
        }
    }

}
