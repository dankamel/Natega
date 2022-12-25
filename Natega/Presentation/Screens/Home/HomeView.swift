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
        contentView
            .onAppear(perform: viewModel.loadData)
    }
    
    private var contentView: some View {
        VStack {
            date
            image
            title
            readings
            Spacer()
        }
    }
    
    private var date: some View {
        VStack(alignment: .trailing, spacing: 8) {
            Text("Today")
                .fontWeight(.bold)
                .font(.system(size: 22))
            Text(viewModel.formattedDate())
                .fontWeight(.semibold)
                .font(.system(size: 15))
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.horizontal, 16)
        .padding(.top, 24)
    }
    
    private var image: some View {
        Image(uiImage: UIImage(named: "stmary")!)
            .cornerRadius(15)
            .padding(.top, 16)
    }
    
    private var title: some View {
        Text("title")
    }
    
    private var readings: some View {
        Text("readings")
    }
}
