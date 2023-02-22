//
//  SectionGridView.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/01/31.
//

import SwiftUI

struct SectionGridView: View {
    private let columns: [GridItem] = [
        .init(.flexible()),
    ]
    
    private let collections: [BookCollection] = [
        .init(section: "FREE", title: "Apple User Guide help you do more with your devices"),
        .init(section: "FEATURED COLLECTION", title: "전기 및 회고록"),
        .init(section: "FEATURED COLLECTION", title: "단편 소설"),
        .init(section: "FEATURED COLLECTION", title: "역사"),
        .init(section: "FEATURED COLLECTION", title: "철학"),
        .init(section: "FEATURED COLLECTION", title: "시집"),
    ]
    
    // 네비게이션 링크를 넣으면 엑센트 컬러가 블루가 되고, align이 센터가됨 ,,,??

    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            Section {
                HScrollStack {
                    ForEach(collections) { collection in
                        NavigationLink(value: collection) {
                            firstCell(collection: collection)
                        }
                        .buttonStyle(EmptyButtonStyle())
                    }
                }
            } header: {
                Text("첫 번째 섹션")
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Color.yellow)
            }
            
            Section {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(collections) { collection in
                            VStack(spacing: 20) {
                                Text(collection.section)
                                Text(collection.title)
                            }
                        }
                    }
                }
                
            } header: {
                Text("두 번째 섹션")
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Color.red)
            }
        }
    }
    
    func firstCell(collection: BookCollection) -> some View {
        return VStack(alignment: .leading, spacing: 5) {
            Text(collection.section)
                .font(.caption)
            Text(collection.title)
                .font(.headline)
                .fixedSize(horizontal: false, vertical: true)
                .lineLimit(2)
                .frame(width: 300, height: 50, alignment: .topLeading)
            Rectangle()
        }
        .frame(width: 300, height: 250)
        .padding(.horizontal, 20)
        .navigationDestination(for: BookCollection.self) { hashable in
            Text(collection.title)
        }
    }
}

struct EmptyButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
    }
}

struct SectionGridView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SectionGridView()
        }
    }
}
