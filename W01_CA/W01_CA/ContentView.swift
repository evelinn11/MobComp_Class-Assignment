//
//  ContentView.swift
//  W01_CA
//
//  Created by student on 11/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("MyPhoto")
                .resizable()
                .frame(width: 370, height: 250)
                .clipShape(Circle())
                .padding(.top, 50)
            Text("Hi! I'm Evelin")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding(5)
            Text("My age is 20")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(10)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
            Text("❤️😊👏")
                .padding(.top, 10)
                .padding(.bottom, 50)
                .font(.largeTitle)
        }
        .background(Color.red.opacity(0.2))
        .border(.black)
        .padding()
    }
}

#Preview {
    ContentView()
}

