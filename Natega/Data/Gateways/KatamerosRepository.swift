//
//  KatamerosRepository.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import Foundation
import Combine

protocol KatamerosRepositoryType { // a.k.a. gateway
    func getFeastInfo() -> AnyPublisher<FeastModel, Error>
}

struct KatamerosRepository: KatamerosRepositoryType {
    let apiClient: KatamerosAPIType
    
    public func getFeastInfo() -> AnyPublisher<FeastModel, Error> {
        return apiClient.getFeastInfo()
    }
}
