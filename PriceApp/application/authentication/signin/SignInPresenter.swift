//
//  SignInPresenter.swift
//  PriceApp
//
//  Created by Alfredo Benaute on 1/6/20.
//  Copyright © 2020 Alfredo Benaute. All rights reserved.
//

import Foundation
import Alamofire

class SignInPresenter{

    var view : SignInView?
    
    init(view : SignInView) {
        self.view = view
    }
    
    func login(username: String? , passsword: String?){
        
        
        if(username?.isEmpty  ?? true){
            view?.showError(description: "Ingresar usuario")
            return
        }
        
        if(passsword?.isEmpty ?? true){
            view?.showError(description: "Ingresar contraseña")
            return
        }
        
        let parameters =  ["login":username, "password":passsword]
        
        AF.request(Constants.seguridadURL, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default).responseJSON { (response) in
             switch response.result {
                case .success(let value):
                    if let json = value as? [String: Any] {
                        print(json)
                        
                        if let estado = json["estado"] as? Dictionary<String,Any> {
                            
                            let valido =  estado["valido"] as! Bool
                            
                            if(!valido){
                                self.view?.showError(description: estado["mensajeError"] as! String)
                            }else{
                                 self.view?.authorized()
                            }
                        }
                        
                       
                    }
                case .failure(let error):
                    print(error)
            }
            
        }
        
    }
}

