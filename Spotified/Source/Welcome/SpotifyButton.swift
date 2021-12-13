import UIKit
import SwiftUI
import SpotifyLogin

struct ActivityIndicator: UIViewControllerRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let v = SpotifyLoginButton(viewController: self, scopes: [.streaming, .userLibraryRead])
        
        return v
    }
    
    func updateUIView(_ activityIndicator: UIActivityIndicatorView, context: Context) {
        activityIndicator.startAnimating()
    }
}
