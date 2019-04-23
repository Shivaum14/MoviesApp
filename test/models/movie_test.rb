require 'test_helper'

class MovieTest < ActiveSupport::TestCase

    
  test 'should not save empty movie' do
    movie = Movie.new
        
    movie.save
    refute movie.valid?
  end
    
  test 'should save valid movie' do
    movie = Movie.new
        
    movie.title = 'my movie'
    movie.description = 'good'
    movie.movie_length = '120'
    movie.director = 'you'
    movie.rating = 'R'
        
    movie.save
    assert movie.valid?
  end
    
  test 'should not save duplicate movie' do
    movie1 = Movie.new
    movie1.title = 'my movie1'
    movie1.description = 'good'
    movie1.movie_length = '120'
    movie1.director = 'you'
    movie1.rating = 'R'
    movie1.save
    assert movie1.valid?
        
    movie2 = Movie.new
    movie2.title = 'my movie1'
    movie2.description = 'good2'
    movie2.movie_length = '122'
    movie2.director = 'you2'
    movie2.rating = 'R2'
    movie2.save
    refute movie2.valid?
  end
end
