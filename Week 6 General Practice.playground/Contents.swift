import Foundation

enum Genre {
    case action, comedy, drama, horror, sciFi, documentary
}

struct Movie {
    let title: String
    let genre: Genre
    let rating: Double  // IMDb-like rating (0.0 - 10.0)
    let duration: Int   // Duration in minutes
}

func filterMovies(movies: [Movie], minRating: Double, preferredGenre: Genre) -> [Movie] {
    return movies.filter { $0.rating >= minRating && $0.genre == preferredGenre }
}

// Example Usage
let movies = [
    Movie(title: "Interstellar", genre: .sciFi, rating: 8.6, duration: 169),
    Movie(title: "The Dark Knight", genre: .action, rating: 9.0, duration: 152),
    Movie(title: "Step Brothers", genre: .comedy, rating: 7.0, duration: 98),
    Movie(title: "Parasite", genre: .drama, rating: 8.6, duration: 132)
]

let topActionMovies = filterMovies(movies: movies, minRating: 8.0, preferredGenre: .action)
print(topActionMovies.map { $0.title })  // Output: ["The Dark Knight"]
