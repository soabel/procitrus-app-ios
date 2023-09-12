//
//  Costants.swift
//  PriceApp
//
//  Created by Alfredo Benaute on 1/6/20.
//  Copyright © 2020 Alfredo Benaute. All rights reserved.
//

import Foundation

struct Constants {
    
   static let baseURL = "https://sistemaprecioswebapi-qa.azurewebsites.net/"
    
    static let seguridadURL = baseURL + "api/Seguridad/AutenticarUsuario"
    
    static let ventasURL = baseURL + "api/Ventas/ListarVentasResumenVariedad"
    
    static let detallePrecioURL = baseURL + "api/Ventas/ObtenerVenta"
}

