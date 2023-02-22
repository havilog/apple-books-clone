//
//  RootView.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/01/31.
//

import SwiftUI

struct RootView: View {
    @ObservedObject private var viewModel: RootViewModel
    
    init(viewModel: RootViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text("")
//        TestView(destination: $viewModel.destination)
//            .onAppear {
//                self.viewModel.onAppear()
//            }
    }
}

//struct TestView: View {
//    @Binding var destination: RootViewModel.Destination
//
//    var body: some View {
//        switch destination {
//        case .root:
//            SplashView()
//
//        case .login:
//            LoginView()
//
//        case .home:
//            AppView()
//        }
//    }
//}

struct SplashView: View {
    var body: some View {
        ZStack {
            Color(.yellow)
            Text("스플래쉬 뷰")
                .font(.title)
                .bold()
        }
        .ignoresSafeArea()
    }
}

struct LoginView: View {
    var body: some View {
        Text("로그인")
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(viewModel: .init())
    }
}
