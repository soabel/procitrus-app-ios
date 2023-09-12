//
//  SignInView.swift
//  PriceApp
//
//  Created by Alfredo Benaute on 1/6/20.
//  Copyright © 2020 Alfredo Benaute. All rights reserved.
//

import Foundation

protocol SignInView {
    func authorized()
    
    func showError(description:String)
}
