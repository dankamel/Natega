//
//  LoadFeastInfoUseCase.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import Foundation
import Combine

protocol LoadFeastInfoUseCaseType {
    func execute() -> AnyPublisher<FeastModel, Error>
}

class LoadFeastInfoUseCase: LoadFeastInfoUseCaseType {
    let repository: KatamerosRepositoryType
    
    init(repository: KatamerosRepositoryType) {
        self.repository = repository
    }
    
    // execute request
    func execute() -> AnyPublisher<FeastModel, Error> {
        self.repository.getFeastInfo()
    }
}
