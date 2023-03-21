//
//  BookDetailView.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/03/21.
//

import Foundation

struct BookDetailView: View {
    @StateObject private var viewModel: BookDetailViewModel
    
    init(books: [Book]) {
        _viewModel = .init(wrappedValue: .init(books: books))
    }
    
    var body: some View {
        Text("")
    }
}
