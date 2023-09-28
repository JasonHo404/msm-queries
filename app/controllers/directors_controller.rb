class DirectorsController < ApplicationController
  def index
    render({template: "director_templates/list"})
  end

  def show
    #fetch director records
    d_id = params.fetch("d_id")
    records = Director.where({id: d_id})
    @director_records = records.at(0)

    render({template: "director_templates/details"})


  end
end
