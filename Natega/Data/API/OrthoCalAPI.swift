//
//  OrthoCalAPI.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import Foundation
import Combine

protocol OrthoCalAPIType {
    func getFeastInfo() -> AnyPublisher<FeastModel, Error>
}

struct OrthoCalAPI: OrthoCalAPIType {
    let baseURL = "https://orthocal.info"
    private var cancellables = Set<AnyCancellable>()
        
    func getFeastInfo() -> AnyPublisher<FeastModel, Error> {
        let url = URL(string: baseURL)!.appendingPathComponent("api/oca/")
        let publisher = URLSession.shared.dataTaskPublisher(for: url)
        return publisher
            .map(\.data)
            .replaceError(with: Data())
            .decode(type: FeastModel.self, decoder: JSONDecoder())
            .print()
            .eraseToAnyPublisher()
    }
}
