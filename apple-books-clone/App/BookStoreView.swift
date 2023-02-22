//
//  BookStoreView.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/01/31.
//

import SwiftUI

struct BookStoreView: View {
    var body: some View {
        NavigationStack {
            Text("이게 맞나")
                .navigationTitle("북스토어")
        }
    }
}

struct BookStoreView_Previews: PreviewProvider {
    static var previews: some View {
        BookStoreView()
    }
}
