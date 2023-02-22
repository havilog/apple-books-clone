//
//  SectionListModel.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/01/31.
//

import SwiftUI

struct BookCollection: Identifiable, Hashable, Sendable {
    var id: String { return title }
    
    let section: String
    let title: String
}
