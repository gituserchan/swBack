package softwareback.swback;

import jakarta.persistence.EntityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import softwareback.swback.domain.movie.MovieRepository;
import softwareback.swback.domain.service.MovieService;

import javax.sql.DataSource;

@Configuration
public class MovieConfig {
    private final MovieRepository movieRepository;

    public MovieConfig(MovieRepository movieRepository) {
        this.movieRepository = movieRepository;
    }

    @Bean
    public MovieService movieService(){
        return new MovieService(movieRepository);
    }
}
