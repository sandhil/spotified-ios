
import Foundation
import SwiftUI

class WebViewViewModel: ObservableObject {
    
    @Published var isLoading: Bool = false
    @Published var canGoBack: Bool = false
    @Published var shouldGoBack: Bool = false
    @Published var title: String = ""
    
    var code: String?
    var url: URL?
    
    init(url: URL?) {
        self.url = url
    }
}
