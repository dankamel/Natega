//
//  OrthoCalAPI.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import Foundation
import Combine

protocol OrthoCalAPIType {
    func getFeastInfo() -> AnyPublisher<[String: FeastModel], Error>
}

struct OrthoCalAPI: OrthoCalAPIType {
    let baseURL = "https://orthocal.info"
    private var cancellables = Set<AnyCancellable>()
    
    struct DataResponse<T>: Decodable where T: Decodable {
        let result: [String: T]
        let error: [String]
        var description: String {
            return """
            ------------
            result = \(result)
            error = \(error)
            ------------
            """
        }
    }
    
    func getFeastInfo() -> AnyPublisher<[String : FeastModel], Error> {
        let url = URL(string: baseURL)!.appendingPathComponent("api/oca")
        let publisher = URLSession.shared.dataTaskPublisher(for: url)
        return publisher
            .map(\.data)
            .replaceError(with: Data())
            .decode(type: DataResponse<FeastModel>.self, decoder: JSONDecoder())
            .print()
            .map { $0.result }
            .eraseToAnyPublisher()
    }
}
