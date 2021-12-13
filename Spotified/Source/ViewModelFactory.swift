//
//  ViewModelFactory.swift
//  Spotified
//
//  Created by Sandhil Eldhose on 11/12/2021.
//

import Foundation


class ViewModelFactory {
    
    let spotifiedApi: SpotifiedApi
    let backEndClient : BackendClient
    init () {
        self.spotifiedApi  = SpotifiedApi(baseURL: "".toURL())
        self.backEndClient = BackendClient(spotifiedApi: spotifiedApi)
    }
    
    func makeWelcomeViewModel() -> WelcomeScreenViewModel {
        return WelcomeScreenViewModel(
            backendClient: backEndClient)
    }
}
