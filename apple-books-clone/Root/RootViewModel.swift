//
//  RootViewModel.swift
//  apple-books-clone
//
//  Created by havi.log on 2023/01/31.
//

import Foundation

final class RootViewModel: ObservableObject {
    
    enum Destination: Equatable {
        case root
        case login
        case home
    }
    
    @Published var destination: Destination = .root
    private let clock: any Clock<Duration>
    
    init(
        destination: Destination = .root,
        clock: any Clock<Duration> = ContinuousClock()
    ) {
        self.destination = destination
        self.clock = clock
    }
    
    func onAppear() {
        Task { @MainActor in
            guard destination == .root else { return }
            try await clock.sleep(for: .seconds(1))
            destination = .home
        }
    }
}

extension Clock {
    public func sleep(
      for duration: Duration,
      tolerance: Duration? = nil
    ) async throws {
      try await self.sleep(until: self.now.advanced(by: duration), tolerance: tolerance)
    }
}
