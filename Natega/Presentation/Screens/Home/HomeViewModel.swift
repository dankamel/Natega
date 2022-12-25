//
//  HomeViewModel.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import UIKit
import Combine

final class HomeViewModel: ObservableObject {
    
    let feastInfoCase: LoadFeastInfoUseCaseType
    let image = UIImage(named: "stmary")!
    var backgroundColor,
        primaryColor,
        detailColor,
        secondaryColor: UIColor?
    
    // Output
    @Published var feastResult: FeastModel?
    @Published var readings: Reading?
            
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
                // Intentionally empty
            } receiveValue: { [weak self] result in
                self?.feastResult = result
            }
            .store(in: &cancellables)
    }
    
    func formattedDate() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd"
        let day = formatter.string(from: date)
        formatter.dateFormat = "MMMM"
        let month = formatter.string(from: date)
        formatter.dateStyle = .long
        return "\(day) " + "\(month)"
    }
}
