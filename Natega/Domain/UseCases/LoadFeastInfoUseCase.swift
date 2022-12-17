//
//  LoadFeastInfoUseCase.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import Foundation
import Combine

protocol LoadFeastInfoUseCaseType {
    func execute() -> AnyPublisher<[String: FeastModel], Error>
}

class LoadFeastInfoUseCase: LoadFeastInfoUseCaseType {
    let repository: OrthoCalRepositoryType
    
    init(repository: OrthoCalRepositoryType) {
        self.repository = repository
    }
    
    // execute request
    func execute() -> AnyPublisher<[String : FeastModel], Error> {
        self.repository.getFeastInfo()
    }
}
