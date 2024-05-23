class MovieController < ApplicationController

  def movie

    render({ :template => "misc_templates/movies"})
  end 

  def show
    the_id = params.fetch("the_id")

    matching_records = Movie.where({ :id => the_id })

    @the_movie = matching_records.at(0)

    render({ :template => "misc_templates/shows"})

  end

end
