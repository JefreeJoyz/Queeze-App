//
//  ProgressBar.swift
//  Queeze App
//
//  Created by Yakushev Yevhen on 28.05.2023.
//

import SwiftUI

struct ProgressBar: View {
    var Progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(red: 0.984, green: 0.929, blue: 0.847))
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: Progress, height: 4)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(Progress: 50)
    }
}
