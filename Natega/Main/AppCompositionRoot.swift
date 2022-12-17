//
//  AppCompositionRoot.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import SwiftUI

final class AppCompositionRoot {
    static let assembler = DefaultAssembler()
    
    static var start: some View {
        assembler.resolve()
    }
}
