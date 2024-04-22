package softwareback.swback.domain.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import softwareback.swback.domain.movie.Movie;
import softwareback.swback.domain.movie.MovieRepository;

import java.util.List;

@Service
public class MovieService {
    @Autowired
    private MovieRepository movieRepository;

    public MovieService(MovieRepository movieRepository) {
        this.movieRepository = movieRepository;
    }

    public List<Movie> searchMovies(String title) {
        return movieRepository.findByTitleContaining(title);
    }
}
