//
//  SectionListView.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/01/31.
//

import SwiftUI

struct SectionListView: View {
    private let sections: [BookCollection] = [
        .init(section: "FREE", title: "Apple User Guide help you do more with your devices"),
        .init(section: "FEATURED COLLECTION", title: "전기 및 회고록"),
        .init(section: "FEATURED COLLECTION", title: "단편 소설"),
        .init(section: "FEATURED COLLECTION", title: "역사"),
        .init(section: "FEATURED COLLECTION", title: "철학"),
        .init(section: "FEATURED COLLECTION", title: "시집"),
    ]

    var body: some View {
        List(sections) { section in
            VStack(alignment: .leading, spacing: 5) {
                Text(section.section)
                Text(section.title)
            }
        }
    }
}

struct SectionListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionListView()
    }
}
