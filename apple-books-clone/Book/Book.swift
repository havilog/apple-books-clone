//
//  Book.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/03/21.
//

import Foundation

struct Book: Equatable, Identifiable {
    let id: UUID = .init()
    let imageURL: URL
    let title: String
    let description: String
    let rate: Double
}
