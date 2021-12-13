//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Sandhil Eldhose on 17/10/2021.
//

import SwiftUI

struct WelcomeView: View {
    
    @ObservedObject var viewModel: WelcomeScreenViewModel
    @ObservedObject var webViewModel = WebViewViewModel(url: "".toURL())
    @State private var showWebView = false
    
    init(viewModel: WelcomeScreenViewModel) {
        self.viewModel = viewModel
        webViewModel.url = viewModel.url
    }
    
    var body: some View {
        ZStack {
            
            
            if showWebView && ((webViewModel.code?.isEmpty) == nil) {
                Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading) {
                    WebViewContainer(webViewModel: webViewModel)
                        .frame(width: UIScreen.main
                                .bounds.width - 40, height: UIScreen.main
                                .bounds.height - 60)
                }
            } else {
                Button("Show details") {
                    showWebView.toggle()
                }
            }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView(viewModel: WelcomeScreenViewModel(backendClient: BackendClient(spotifiedApi: SpotifiedApi(baseURL: "".toURL()))))
        }
    }
