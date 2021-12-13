//
//  BackendClient.swift
//  Spotified
//
//  Created by Sandhil Eldhose on 22/11/2021.
//


import Foundation
import Combine
import Alamofire

class BackendClient {
    
    private let spotifiedApi: SpotifiedApi
    
    init(spotifiedApi: SpotifiedApi) {
        self.spotifiedApi = spotifiedApi
    }
    
    func getSpotifyBaseURL() -> URL? {
        spotifiedApi.baseURL
    }
    
    func getSignInURL() -> URL? {
        spotifiedApi.signInURL
    }
}
