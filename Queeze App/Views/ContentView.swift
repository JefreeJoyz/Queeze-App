//
//  ContentView.swift
//  Queeze App
//
//  Created by Yakushev Yevhen on 28.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 40)  {
                VStack(spacing: 20) {
                    Text("Trivia Game")
                        .lilacTitle()
                    Text("Are u ready?")
                        .foregroundColor(Color("AccentColor"))

                }
                NavigationLink {
                    TriviaView()
                } label: {
                    PrimaryButton(text: "GO")
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.984, green: 0.929, blue: 0.847))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
