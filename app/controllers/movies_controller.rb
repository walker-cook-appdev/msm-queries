class MoviesController < ApplicationController
  def index
    render({:template => "movies_template/index.html.erb"})
  end

  def movie_details
      the_id = params.fetch("movie_id")
      @the_movie = Movie.where({:id => the_id})
  
        render({:template => "movies_template/movie_details.html.erb"})
  end

end