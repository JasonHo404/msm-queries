class MoviesController < ApplicationController
  def index
    render({template: "movie_templates/list"})
  end

  def show
    #fetch movie records
    m_id = params.fetch("m_id")
    records = Movie.where({id: m_id})
    @movie_records = records.at(0)

    render({template: "movie_templates/details"})


  end
end
