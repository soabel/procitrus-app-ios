//
//  StringExtensions.swift
//  PriceApp
//
//  Created by Alfredo Benaute on 1/6/20.
//  Copyright © 2020 Alfredo Benaute. All rights reserved.
//

import Alamofire

extension String: ParameterEncoding {

    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        var request = try urlRequest.asURLRequest()
        request.httpBody = data(using: .utf8, allowLossyConversion: false)
        return request
    }

}
