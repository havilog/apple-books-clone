//
//  TestView.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/02/15.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack {
            Color.green
            HStack {
                HStack {
                    Spacer()
                    Spacer()
                }
                .contentShape(Ellipse())
                .onTapGesture {
                    print("1")
                }
                
                Text("Hello, World!")
                    .frame(maxWidth: .infinity)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        print("2")
                    }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
