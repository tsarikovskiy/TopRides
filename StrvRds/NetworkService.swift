//
//  NetworkService.swift
//  StrvRds
//
//  Created by Serg on 6/20/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

protocol NetworkServiceProtocol {
    func authorize()
}

class NetworkService: NetworkServiceProtocol {
    func authorize() {
        let clientId = "client_id=\(StravaApi.clientId)"
        let redirectUri = "redirect_uri=srvrds://com.srvrds.auth"
        let responseType = "response_type=code"
        
        guard let url = URL(string: "https://www.strava.com/oauth/authorize?\(clientId)&\(redirectUri)&\(responseType)") else {
            return
        }
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)

//
//        let urlSession = URLSession(configuration: .default)
//
//        let dataTask = urlSession.dataTask(with: url) { (data, response, error) -> Void in
//            print("data = \(String(describing: data))")
//            print("response = \(String(describing: response))")
//            print("error = \(String(describing: error))")
//
//
//            guard let data = data else {
//                return
//            }
//            if let returnData = String(data: data, encoding: .utf8) {
//                print("returnData = \(returnData)")
//
//            }
//
//
//            guard let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) else {
//                return
//            }
//
//            print("json = \(String(describing: json))")
//        }
//
//        dataTask.resume()
    }
}
