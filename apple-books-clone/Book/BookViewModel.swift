//
//  BookViewModel.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/03/21.
//

import Foundation

final class BookViewModel: ObservableObject {
    @Published private(set) var books: [Book] = []
}
