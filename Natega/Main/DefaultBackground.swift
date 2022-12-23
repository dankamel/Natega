//
//  DefaultBackground.swift
//  Natega
//
//  Created by Daniel Kamel on 23/12/2022.
//

import SwiftUI

struct DefaultBackground: View {
    var body: some View {
            
        LinearGradient(gradient: .init(colors: [Color(#colorLiteral(red: 0.4313035607, green: 0.6823632717, blue: 0.7646967769, alpha: 1)), Color(#colorLiteral(red: 0.9058917165, green: 0.8509779572, blue: 0.8588247299, alpha: 1)), Color(#colorLiteral(red: 0.9843173623, green: 0.96470505, blue: 0.9647064805, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

    }
}

struct DefaultBackground_Previews: PreviewProvider {
    static var previews: some View {
        DefaultBackground()
    }
}
