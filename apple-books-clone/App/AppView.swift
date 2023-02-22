//
//  TabView.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/01/31.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            Text("읽고있는책")
                .tabItem {
                    Text("읽고있는책")
                }

            Text("보관함")
                .tabItem {
                    Text("보관함")
                }

            BookStoreView()
                .tabItem {
                    Text("북스토어")
                }

            Text("검색")
                .tabItem {
                    Text("검색")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
