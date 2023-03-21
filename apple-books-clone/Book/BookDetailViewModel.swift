//
//  BookDetailViewModel.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/03/21.
//

import Foundation

final class BookDetailViewModel: ObservableObject {
    private let books: [Book]
    
    init(books: [Book]) {
        self.books = books
    }
}
