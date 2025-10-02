//
//  ContentView.swift
//  W04_CA
//
//  Created by student on 02/10/25.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var posterUrl: String
    var posterPath: String
    var genre: String
    var description: String
}

struct ContentView: View {
    
    @StateObject var movieStore = MovieStore()

    var body: some View {
        NavigationStack{
            MovieCardView(movies: $movieStore.movies)
        }
        .tint(.orange)
    }
}

#Preview {
    ContentView()
}
