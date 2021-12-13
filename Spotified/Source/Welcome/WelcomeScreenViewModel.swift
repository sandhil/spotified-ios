
import Foundation
import Combine
import SpotifyLogin
import UIKit


class WelcomeScreenViewModel: ObservableObject {
    private var cancellableSet: Set<AnyCancellable> = []
    var backendClient: BackendClient
    
    var url: URL?
    init(backendClient: BackendClient) {
        self.backendClient = backendClient
        url = backendClient.getSignInURL()
    }
}
