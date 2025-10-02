//
//  MovieStore.swift
//  W04_CA
//
//  Created by student on 02/10/25.
//

import SwiftUI
import Combine

class MovieStore: ObservableObject {
    @Published var movies: [Movie] = [
        Movie(
            title:"Avengers",
            posterUrl: "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg",
            posterPath: "Avengers",
            genre: "Sci-Fi",
            description: "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins."),
        Movie(
            title: "Inception",
            posterUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7g2MW_GYbDXhIxnKXFyKnRCZv_yDL7lg1GQ&s",
            posterPath: "Inception",
            genre: "Sci-Fi",
            description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster."),
        Movie(
            title: "Oppenheimer",
            posterUrl:"https://m.media-amazon.com/images/M/MV5BN2JkMDc5MGQtZjg3YS00NmFiLWIyZmQtZTJmNTM5MjVmYTQ4XkEyXkFqcGc@._V1_.jpg",
            posterPath: "Oppenheimer",
            genre: "Docudrama",
            description: "A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bombs that brought an end to World War II."),
        Movie(
            title: "Black Rabbit",
            posterUrl: "https://m.media-amazon.com/images/M/MV5BMjNkZDQzYTItZDgzNi00ZDU4LWI2NWItYjA0ZDdlMjgyMWI2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
            posterPath: "BlackRabbit",
            genre: "Crime",
            description: "When the owner of a New York City hotspot allows his turbulent brother back in his life, he opens the door to escalating dangers that threaten to bring down everything he's built."),
        Movie(
            title: "Memento",
            posterUrl: "https://m.media-amazon.com/images/M/MV5BYmQ3MjliNjAtNWFiZS00YWI1LTlmZTktMzBiNDE1NjRhZjU0XkEyXkFqcGc@._V1_.jpg",
            posterPath: "Memento",
            genre: "Mystery",
            description: "A former insurance investigator who now suffers from anterograde amnesia uses notes and tattoos to hunt down his wife's murderer."),
        Movie(
            title: "Narnia",
            posterUrl: "https://m.media-amazon.com/images/M/MV5BMTc0NTUwMTU5OV5BMl5BanBnXkFtZTcwNjAwNzQzMw@@._V1_.jpg",
            posterPath: "Narnia",
            genre: "Fantasy",
            description: "While playing, Lucy and her siblings find a wardrobe that lands them in a mystical place called Narnia.")
    ]
}
