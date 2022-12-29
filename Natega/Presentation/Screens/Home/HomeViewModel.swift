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
    
    // Published properties
    @Published var feastResult: FeastModel?
    @Published var readings: [Reading] = []
    @Published var imageIndex = 0
    @Published var images = ["church", "stmary"]
            
    private var cancellables = Set<AnyCancellable>()
    
    // MARK: - Init
    init(feastInfoCase: LoadFeastInfoUseCaseType) {
        self.feastInfoCase = feastInfoCase
        createReadings()
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
    
    private func createReadings() {
        let range = 1...6
        for _ in range {
            let reading = Reading(id: Int.random(in: 1...99),
                                  title: "Gal 5:16-6:2",
                                  introduction: "introduction",
                                  conclusion: "conclusion",
                                  passages: [],
                                  html: "html")
            
            readings.append(reading)
        }
    }
}
