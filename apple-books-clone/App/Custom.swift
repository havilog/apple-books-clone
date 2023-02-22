//
//  Custom.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/02/21.
//

import SwiftUI

public struct VSapcer: View {
    private let spacing: CGFloat
    
    public init(spacing: CGFloat) {
        self.spacing = spacing
    }
    
    public var body: some View {
        Spacer()
            .frame(height: spacing)
    }
}

public struct HSapcer: View {
    private let spacing: CGFloat
    
    public init(spacing: CGFloat) {
        self.spacing = spacing
    }
    
    public var body: some View {
        Spacer()
            .frame(width: spacing)
    }
}

public struct HScrollStack<StackContent: View>: View {
    
    private let showIndicators: Bool
    private let alignment: VerticalAlignment
    private let spacing: CGFloat?
    private let stackContent: () -> StackContent
    
    public init(
        showIndicators: Bool = true,
        alignment: VerticalAlignment = .center,
        spacing: CGFloat? = nil,
        @ViewBuilder stackContent: @escaping () -> StackContent
    ) {
        self.showIndicators = showIndicators
        self.alignment = alignment
        self.spacing = spacing
        self.stackContent = stackContent
    }
    
    public var body: some View {
        ScrollView(.horizontal, showsIndicators: showIndicators) {
            HStack(alignment: alignment, spacing: spacing, content: stackContent)
        }
    }
}
