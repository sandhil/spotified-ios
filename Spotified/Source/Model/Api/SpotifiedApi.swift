//
//  SpotifiedApi.swift
//  Spotified
//
//  Created by Sandhil Eldhose on 11/12/2021.
//

import Foundation


class SpotifiedApi {
    let baseURL: URL?
    public var signInURL: URL? {
        let clientId = "ab494260d08743f1a97e86232832894d"
        let redirectURL = "spotified-ios%3A%2F%2Fspotified-login-callback"
        let baseURL = "https://accounts.spotify.com/authorize"
        let stringURL = "\(baseURL)?client_id=\(clientId)&response_type=code&redirect_uri=\(redirectURL)&scope=user-read-private&show_dialog=TRUE"
        return stringURL.toURL()
    }
    var headers: [String: String] = [:]
        var accessToken: String? = nil {
            didSet {
                if accessToken != nil {
                    headers["Authorization"] = "Bearer \(accessToken!)"
                }
            }
        }
    
    
    init(baseURL: URL? = nil) {
            self.baseURL = baseURL
        }
    
}
