//
//  MovieCardView.swift
//  W04_CA
//
//  Created by student on 02/10/25.
//

import SwiftUI

struct MovieCardView: View {
    @Binding var movies: [Movie]
    
    var body: some View {
            List{
                ForEach(movies){
                    movie in
                    NavigationLink(destination:MovieDetailView(movie: movie)){
                        Spacer()
                        
                        VStack(alignment: .center){
                            Image(movie.posterPath)
                                .resizable()
                                .frame(width: 300, height: 420)
                                .padding(.leading, 20)
                            
                            Text(movie.title)
                                .font(.title2)
                                .bold()
                        }
                        .padding()
                        .cornerRadius(20)
                        
                        Spacer()
                    }
                }
            }
            .navigationTitle("UCFlix")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(.orange.opacity(0.2), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.light, for: .navigationBar)
    }
}
