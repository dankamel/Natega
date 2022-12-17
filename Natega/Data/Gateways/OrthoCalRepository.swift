//
//  OrthoCalRepository.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import Foundation
import Combine

protocol OrthoCalRepositoryType { // a.k.a. gateway
    func getFeastInfo() -> AnyPublisher<[String: FeastModel], Error>
}

struct OrthoCalRepository: OrthoCalRepositoryType {
    let apiClient: OrthoCalAPIType
    
    public func getFeastInfo() -> AnyPublisher<[String: FeastModel], Error> {
        return apiClient.getFeastInfo()
    }
}
