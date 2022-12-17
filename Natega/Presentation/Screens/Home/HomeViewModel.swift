//
//  HomeViewModel.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    
    let feastInfoCase: LoadFeastInfoUseCaseType
    
    // Output
    @Published var feastInfo: FeastModel?
    
    private var cancellables = Set<AnyCancellable>()
    
    // MARK: - Init
    init(feastInfoCase: LoadFeastInfoUseCaseType) {
        self.feastInfoCase = feastInfoCase
    }
    
    func loadData() {
        feastInfoCase
            .execute()
            .receive(on: RunLoop.main)
            .sink { completion in
                
            } receiveValue: { [weak self] info in
                self?.feastInfo = info
            }
            .store(in: &cancellables)

    }
}
