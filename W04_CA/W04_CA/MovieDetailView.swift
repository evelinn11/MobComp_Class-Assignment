//
//  MovieDetailView.swift
//  W04_CA
//
//  Created by student on 02/10/25.
//

import SwiftUI

struct MovieDetailView: View {
    var movie:Movie
    
    var body: some View {
        VStack(alignment:.center){
            AsyncImage(url: URL(string: movie.posterPath)){
                phase in switch phase{
                case .empty:
                    ProgressView()
                        .frame(width: 300, height: 420)
                case .success(let image):
                    image
                        .resizable()
                        .frame(width: 300, height: 420)
                        .padding()
                case .failure(_):
                    Image(movie.posterPath)
                        .resizable()
                        .frame(width: 300, height: 420)
                        .padding()
                    
                @unknown default:
                    EmptyView()
                }
            }
            
            VStack(alignment:.leading){
                Text(movie.title)
                    .font(.largeTitle)
                    .bold()
                
                Text("Genre: \(movie.genre)")
                    .font(.headline)
                
                Text("Description: \n\(movie.description)")
                    .font(.subheadline)
            }
            .padding()
            
            Spacer()
        }
    }
}
