//
//  Extensions.swift
//  Queeze App
//
//  Created by Yakushev Yevhen on 28.05.2023.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
