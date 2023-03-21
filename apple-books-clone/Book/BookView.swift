//
//  BookView.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/03/21.
//

import SwiftUI

struct BookView: View {
    @ObservedObject private var viewModel: BookViewModel
    
    init(viewModel: BookViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        BookDetailView(viewModel: .init(books: viewModel.books))
    }
}
