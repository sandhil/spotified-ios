//
//  AuthorizationResponse.swift
//  Spotified
//
//  Created by Sandhil Eldhose on 22/11/2021.
//

import Foundation

struct AuthorizationResponse: Codable {
    let code: String?
    let state: String?
}
