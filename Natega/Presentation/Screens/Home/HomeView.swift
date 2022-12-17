//
//  HomeView.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear(perform: viewModel.loadData)
    }
}
