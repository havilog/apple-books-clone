//
//  TestView.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/02/15.
//

import SwiftUI

struct TestView: View {
    
    struct SomeIdentifiable: Identifiable {
        let id: UUID = .init()
        let title: String
    }
    
    @State private var isShowing: Bool = false
    @State private var item: SomeIdentifiable?
    
    var body: some View {
        HStack(spacing: .zero) {
            Text("111")
            HSapcer(spacing: 10)
            Text("111")
            HSapcer(spacing: 15)
            Text("111")
            HSapcer(spacing: 20)
            Text("111")
        }
        Text("Hello, World!")
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
            .onTapGesture {
                self.isShowing = true
                self.item = .init(title: "havi")
            }
            .sheet(isPresented: $isShowing) {
                print("on dismiss")
            } content: {
                Text("123")
            }
            .sheet(item: $item) { item in
                Text(item.title)
            }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
